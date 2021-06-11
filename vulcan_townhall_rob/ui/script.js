const mdtApp = new Vue({
    el: "#content",
    data: {
        page: "Home",
        officer: {
            name: "Guest"
        },
        offenses: [],
        warrants: [],
        bolos: [],
        homepage: {
            button_press: 0,
            reports: false,
            warrants: false,
            bolos: false
        },
        recent_searches: {
            person: [],
            vehicle: []
        },
        report_search: "",
        report_edit: {
            enable: false,
            data: {}
        },
        report_results: {
            query: "",
            results: false
        },
        report_selected: {
            id: null,
            date: null,
            name: null,
            title: null,
            incident: null,
            charges: null,
            author: null,
            jailtime: null,
            fined: null
        },
        report_new: {
            title: "",
            charges: {},
            charges_search: "",
            incident: "",
            name: null,
            char_id: null,
            focus: "name",
            recommended_fine: 0,
            recommended_sentence: 0,
            sentence: "",
            fined: 0
        },
        offender_search: "",
        offender_results: {
            query: "",
            results: false
        },
        offender_selected: {
            firstname: null,
            lastname: null,
            notes: "",
            notesems: "",
            licenses: false,
            convictions: null,
            mugshot_url: "",
            dateofbirth: null,
            id: null,
            identifier: null,
            haswarrant: false
        },
        offender_changes: {
            notes: "",
            mugshot_url: "",
            convictions: [],
            convictions_removed: []
        },
        vehicle_search: "",
        vehicle_results: {
            query: "",
            results: false
        },
        vehicle_selected: {
            plate: null,
            type: null,
            owner: null,
            owner_id: null,
            model: null,
            color: null
        },
        warrant_search: "",
        warrant_results: {
            query: "",
            results: {}
        },
        warrant_selected: {
            name: null,
            id: null,
            char_id: null,
            report_id: null,
            report_title: null,
            report_charges: {},
            date: null,
            expire: null,
            notes: null
        },
        warrant_new: {
            name: null,
            char_id: null,
            report_id: null,
            report_title: null,
            report_search: "",
            charges: {},
            notes: null
        },
        bolo_search: "",
        bolo_results: {
            query: "",
            results: {}
        },
        bolo_selected: {
            name: null,
            id: null,
            char_id: null,
            report_id: null,
            report_title: null,
            report_charges: {},
            date: null,
            expire: null,
            notes: null
        },
        bolo_new: {
            name: null,
            char_id: null,
            report_id: null,
            report_title: null,
            report_search: "",
            charges: {},
            notes: null
        }
    },
    methods: {
        changePage(page) {
            this.page = page;

            ClearActiveNavItems();

            switch (page) {
                case "Home": {
                    $("#home").addClass("nav-active");
                    break;
                }
                case "Search Reports": {
                    $("#search-reports").addClass("nav-active");
                    break;
                }
                case "Search Offenders": {
                    $("#search-offenders").addClass("nav-active");
                    break;
                }
                case "Search Vehicles": {
                    $("#search-vehicles").addClass("nav-active");
                    break;
                }
                case "Warrants": {
                    $.post("http://vulcan_townhall_rob/getWarrants", JSON.stringify({}));
                    $("#warrants").addClass("nav-active");
                    break;
                }
                case "Bolos": {
                    $.post("http://vulcan_townhall_rob/getBolos", JSON.stringify({}));
                    $("#bolos").addClass("nav-active");
                    break;
                }
                case "Submit Report": {
                    $("#submit-report").addClass("nav-active");
                    break;
                }
            }
        },
        closeMDT() {
            $.post("http://vulcan_townhall_rob/close", JSON.stringify({}));
        },
        OffenderSearch() {
            if (this.offender_search) {
                this.offender_results.query = this.offender_search;

                $.post("http://vulcan_townhall_rob/performOffenderSearch", JSON.stringify({
                    query: this.offender_search
                }));

                this.offender_results.results = false;
            }
        },
        OpenOffenderDetails(id) {
            for (let key in this.offender_results.results) {
                if (id == this.offender_results.results[key].id) {
                    $.post("http://vulcan_townhall_rob/viewOffender", JSON.stringify({
                        offender: this.offender_results.results[key]
                    }));

                    return;
                }
            }
        },
        SaveOffenderChanges() {
            $.post("http://vulcan_townhall_rob/saveOffenderChanges", JSON.stringify({
                changes: this.offender_changes,
                id: this.offender_selected.id,
                identifier: this.offender_selected.identifier
            }));

            this.changePage("Search Offenders");

            this.offender_selected.notes = this.offender_changes.notes;
            this.offender_selected.mugshot_url = this.offender_changes.mugshot_url;
            this.offender_selected.licenses = this.offender_changes.licenses;
            this.offender_selected.convictions = this.offender_changes.convictions;
        },
        ReportSearch() {
            if (this.report_search) {
                this.report_results.query = this.report_search;
                this.warrant_new.report_search = this.report_search;
                this.bolo_new.report_search = this.report_search;

                $.post("http://vulcan_townhall_rob/performReportSearch", JSON.stringify({
                    query: this.report_search
                }));

                this.report_results.results = false;
                this.report_selected = {
                    id: null,
                    date: null,
                    name: null,
                    title: null,
                    report: null,
                    charges: null,
                    author: null,
                    fined: null
                };
            }
        },
        AddCharge(id) {
            for (let key in this.offenses) {
                if (id == this.offenses[key].id) {
                    const offense_name = this.offenses[key].label;
                    if (this.report_new.charges[offense_name]) {
                        Vue.set(this.report_new.charges, offense_name, this.report_new.charges[offense_name] + 1);
                    } else {
                        Vue.set(this.report_new.charges, offense_name, 1);
                    }

                    this.report_new.recommended_fine = Math.min(this.report_new.recommended_fine + this.offenses[key].amount, 90000)
                    if (this.offenses[key].jailtime) {
                        this.report_new.recommended_sentence = Math.min(this.report_new.recommended_sentence + this.offenses[key].jailtime, 90)
                    }

                    return;
                }
            }

        },
        RemoveCharge(offense) {
            for (let key in this.report_new.charges) {
                if (offense == key) {
                    if ((this.report_new.charges[offense] - 1) > 0) {
                        Vue.set(this.report_new.charges, offense, this.report_new.charges[offense] - 1)
                    } else {
                        Vue.delete(this.report_new.charges, offense)
                    }

                    for (let key in this.offenses) {
                        if (offense == this.offenses[key].label) {
                            this.report_new.recommended_fine = this.report_new.recommended_fine - this.offenses[key].amount
                            if (this.offenses[key].jailtime) {
                                this.report_new.recommended_sentence = this.report_new.recommended_sentence - this.offenses[key].jailtime
                            }
                        }
                    }

                    return;
                }
            }
        },
        SubmitNewReport() {
            if (this.report_new.title && this.report_new.char_id && this.report_new.incident) {
                $.post("http://vulcan_townhall_rob/submitNewReport", JSON.stringify({
                    title: this.report_new.title,
                    char_id: this.report_new.char_id,
                    name: this.report_new.name,
                    charges: this.report_new.charges,
                    incident: this.report_new.incident,
                    sentence: this.report_new.sentence,
                    fine: this.report_new.fine,
                    zlist: this.report_new.zlist
                }));

                this.report_new.title = "";
                this.report_new.charges = {};
                this.report_new.charges_search = "";
                this.report_new.incident = "";
                this.report_new.name = null;
                this.report_new.char_id = null;
                this.report_new.focus = "name";
                this.report_new.recommended_fine = 0;
                this.report_new.recommended_sentence = 0;
                this.report_new.sentence = "";
                this.report_new.fine = 0;
                this.report_new.zlist = 0;
                this.offender_search = "";
                this.offender_results.query = "";
                this.offender_results.results = false;
                this.changePage("Search Reports");
            }
        },
        OpenOffenderDetailsById(id) {
            $.post("http://vulcan_townhall_rob/getOffender", JSON.stringify({
                char_id: id
            }));
        },
        ToggleReportEdit() {
            if (this.report_edit.enable) {
                this.report_edit.enable = false;
                this.report_edit.data = {}
            } else {
                this.report_edit.enable = true;
                this.report_edit.data.title = this.report_selected.title;
                this.report_edit.data.incident = this.report_selected.incident;
                this.report_edit.data.jailtime = this.report_selected.jailtime;
                this.report_edit.data.fine = this.report_selected.fine;
                this.report_edit.data.zlist = this.report_selected.zlist;
                this.report_edit.data.fined = this.report_selected.fined;
            }

        },
        DeleteSelectedReport() {
            $.post("http://vulcan_townhall_rob/deleteReport", JSON.stringify({
                id: this.report_selected.id,
            }));

            this.changePage("Search Reports");

            this.report_selected = {
                id: null,
                date: null,
                name: null,
                title: null,
                report: null,
                charges: null,
                author: null,
                fined: null
            };
            this.report_results = {
                query: "",
                results: false
            };
            this.report_search = "";
        },
        SaveReportEditChanges() {
            $.post("http://vulcan_townhall_rob/saveReportChanges", JSON.stringify({
                id: this.report_selected.id,
                title: this.report_edit.data.title,
                incident: this.report_edit.data.incident,
                jailtime: this.report_edit.data.jailtime,
                fine: this.report_edit.data.fine,
                zlist: this.report_edit.data.zlist
            }));

            this.report_selected.title = this.report_edit.data.title;
            this.report_selected.incident = this.report_edit.data.incident;
            this.report_selected.jailtime = this.report_edit.data.jailtime;
            this.report_selected.fine = this.report_edit.data.fine;
            this.report_selected.zlist = this.report_edit.data.zlist;

            this.ToggleReportEdit();
        },
        VehicleSearch() {
            if (this.vehicle_search) {
                this.vehicle_results.query = this.vehicle_search;

                $.post("http://vulcan_townhall_rob/vehicleSearch", JSON.stringify({
                    plate: this.vehicle_search
                }));

                this.vehicle_results.results = false;
            }
        },
        OpenVehicleDetails(result) {
            $.post("http://vulcan_townhall_rob/getVehicle", JSON.stringify({
                vehicle: result
            }));
        },
        WarrantReportSearch() {
            if (this.warrant_new.report_search) {
                this.report_search = this.warrant_new.report_search;
                this.report_results.query = this.report_search;
                this.bolo_new.report_search = this.report_search;

                $.post("http://vulcan_townhall_rob/performReportSearch", JSON.stringify({
                    query: this.report_search
                }));

                this.report_results.results = false;
                this.report_selected = {
                    id: null,
                    date: null,
                    name: null,
                    title: null,
                    report: null,
                    charges: null,
                    author: null,
                    fined: null
                };
            }
        },
        BoloReportSearch() {
            if (this.bolo_new.report_search) {
                this.report_search = this.bolo_new.report_search;
                this.report_results.query = this.report_search;
                this.warrant_new.report_search = this.report_search;

                $.post("http://vulcan_townhall_rob/performReportSearch", JSON.stringify({
                    query: this.report_search
                }));

                this.report_results.results = false;
                this.report_selected = {
                    id: null,
                    date: null,
                    name: null,
                    title: null,
                    report: null,
                    charges: null,
                    author: null,
                    fined: null
                };
            }
        },
        SubmitNewWarrant() {
            const date = new Date();
            date.setDate(date.getDate() + 14);

            $.post("http://vulcan_townhall_rob/submitNewWarrant", JSON.stringify({
                name: this.warrant_new.name,
                char_id: this.warrant_new.char_id,
                report_id: this.warrant_new.report_id,
                report_title: this.warrant_new.report_title,
                charges: this.warrant_new.charges,
                notes: this.warrant_new.notes,
                expire: date
            }));

            this.warrant_new = {
                name: null,
                char_id: null,
                report_id: null,
                report_title: null,
                report_search: "",
                charges: {},
                notes: null
            }
            this.report_results.results = false;
            this.report_results.query = "";
        },
        SubmitNewBolo() {
            const date = new Date();
            date.setDate(date.getDate() + 2);

            $.post("http://vulcan_townhall_rob/submitNewBolo", JSON.stringify({
                name: this.bolo_new.name,
                char_id: this.bolo_new.char_id,
                report_id: this.bolo_new.report_id,
                report_title: this.bolo_new.report_title,
                charges: this.bolo_new.charges,
                notes: this.bolo_new.notes,
                expire: date
            }));

            this.bolo_new = {
                name: null,
                char_id: null,
                report_id: null,
                report_title: null,
                report_search: "",
                charges: {},
                notes: null
            }
            this.report_results.results = false;
            this.report_results.query = "";
        },
        DeleteSelectedWarrant() {
            $.post("http://vulcan_townhall_rob/deleteWarrant", JSON.stringify({
                id: this.warrant_selected.id,
            }));

            this.warrant_selected = {
                name: null,
                id: null,
                char_id: null,
                report_id: null,
                report_title: null,
                report_charges: {},
                date: null,
                expire: null,
                notes: null
            };
        },
        DeleteSelectedBolo() {
            $.post("http://vulcan_townhall_rob/deleteBolo", JSON.stringify({
                id: this.bolo_selected.id,
            }));

            this.bolo_selected = {
                name: null,
                id: null,
                char_id: null,
                report_id: null,
                report_title: null,
                report_charges: {},
                date: null,
                expire: null,
                notes: null
            };
        },
        OpenReportById(id) {
            $.post("http://vulcan_townhall_rob/getReport", JSON.stringify({
                id: id
            }));
        },
        RemoveLicense(license) {
            for (let key in this.offender_selected.licenses) {
                const license2 = this.offender_selected.licenses[key];

                if (license.label == license2.label) {
                    Vue.delete(this.offender_changes.licenses, key)
                    this.offender_changes.licenses_removed.push(license)
                }
            }
        },
        RemoveConviction(conviction) {
            for (let offense in this.offender_selected.convictions) {
                if (offense == conviction) {
                    if ((this.offender_changes.convictions[offense] - 1) > 0) {
                        Vue.set(this.offender_changes.convictions, offense, this.offender_changes.convictions[offense] - 1)
                    } else {
                        Vue.delete(this.offender_changes.convictions, offense)
                        this.offender_changes.convictions_removed.push(offense)
                    }
                }
            }
        },
        SentencePlayer() {
            $.post("http://vulcan_townhall_rob/sentencePlayer", JSON.stringify({
                id: this.report_selected.id,
                char_id: this.report_selected.char_id,
                jailtime: this.report_selected.jailtime,
                charges: this.report_selected.charges,
                fine: this.report_selected.fine,
                zlist: this.report_selected.zlist
            }));

            $("#btn-fine").remove();

            this.report_selected.fined = 1;
            this.report_edit.data.fined = 1;
        }
    },
    computed: {
        filtered_offenses() {
            return this.offenses.filter(offense => offense.label.toLowerCase().search(this.report_new.charges_search.toLowerCase()) !== -1);
        },
        filtered_warrants() {
            return this.warrants.filter(warrant => warrant.name.toLowerCase().search(this.warrant_search.toLowerCase()) !== -1);
        },
        filtered_bolos() {
            return this.bolos.filter(bolo => bolo.name.toLowerCase().search(this.bolo_search.toLowerCase()) !== -1);
        }
    }
});

// This MDT is licenced to ST5M

$("#home").addClass("nav-active");

document.onreadystatechange = () => {
    if (document.readyState === "complete") {
        window.addEventListener("message", function(event) {
            if (event.data.type == "enable") {
                document.body.style.display = event.data.isVisible ? "block" : "none";
            } else if (event.data.type == "returnedPersonMatches") {
                mdtApp.offender_results.results = event.data.matches;
            } else if (event.data.type == "returnedOffenderDetails") {
                mdtApp.offender_selected = event.data.details;
                mdtApp.offender_results.results = false;
                mdtApp.offender_results.query = "";
                mdtApp.offender_changes.notes = mdtApp.offender_selected.notes;
                mdtApp.offender_changes.mugshot_url = mdtApp.offender_selected.mugshot_url;
                mdtApp.offender_changes.licenses = mdtApp.offender_selected.licenses;
                mdtApp.offender_changes.licenses_removed = [];
                mdtApp.offender_changes.convictions = mdtApp.offender_selected.convictions;
                mdtApp.offender_changes.convictions_removed = [];
                mdtApp.offender_search = mdtApp.offender_selected.firstname + " " + mdtApp.offender_selected.lastname;
                mdtApp.changePage("Search Offenders");

                mdtApp.recent_searches.person.unshift(event.data.details);
                if (mdtApp.recent_searches.person.length > 3) {
                    Vue.delete(mdtApp.recent_searches.person, 3)
                }
            } else if (event.data.type == "offensesAndOfficerLoaded") {
                mdtApp.offenses = event.data.offenses;
                mdtApp.officer.name = event.data.name;
            } else if (event.data.type == "returnedReportMatches") {
                mdtApp.report_results.results = event.data.matches;
            } else if (event.data.type == "returnedVehicleMatches") {
                mdtApp.vehicle_results.results = event.data.matches;
                mdtApp.vehicle_selected = {
                    plate: null,
                    type: null,
                    owner: null,
                    owner_id: null,
                    model: null,
                    color: null
                };
            } else if (event.data.type == "returnedVehicleDetails") {
                mdtApp.vehicle_selected = event.data.details;
                mdtApp.vehicle_search = mdtApp.vehicle_selected.plate;

                mdtApp.recent_searches.vehicle.unshift(event.data.details);
                if (mdtApp.recent_searches.vehicle.length > 3) {
                    Vue.delete(mdtApp.recent_searches.vehicle, 3)
                }
            } else if (event.data.type == "returnedVehicleMatchesInFront") {
                mdtApp.vehicle_results.results = event.data.matches;
                mdtApp.vehicle_results.query = event.data.plate;
                mdtApp.vehicle_search = event.data.plate;
                mdtApp.vehicle_selected = {
                    plate: null,
                    type: null,
                    owner: null,
                    owner_id: null,
                    model: null,
                    color: null
                };
                mdtApp.changePage("Search Vehicles");
            } else if (event.data.type == "returnedWarrants") {
                mdtApp.warrants = event.data.warrants;
            } else if (event.data.type == "returnedBolos") {
                mdtApp.bolos = event.data.bolos;
            } else if (event.data.type == "completedWarrantAction") {
                mdtApp.changePage("Warrants");
            } else if (event.data.type == "completedBoloAction") {
                mdtApp.changePage("Bolos");
            } else if (event.data.type == "returnedReportDetails") {
                mdtApp.changePage("Search Reports");
                mdtApp.report_selected = event.data.details;
            } else if (event.data.type == "recentReportsAndWarrantsLoaded") {
                mdtApp.homepage.reports = event.data.reports;
                mdtApp.homepage.warrants = event.data.warrants;
                mdtApp.homepage.bolos = event.data.bolos;
                mdtApp.officer.name = event.data.officer;
            };
        });
    };
};

document.onkeydown = function (data) {
    if (data.which == 27 || data.which == 112) { // ESC or F1
        $.post("http://vulcan_townhall_rob/close", JSON.stringify({}));
    } else if (data.which == 13) { // enter
        // Stop enter key from crashing MDT in an input?
        const textarea = document.getElementsByTagName("textarea");
        if (!$(textarea).is(":focus")) return false;
    }
};

function ClearActiveNavItems() {
    $("#home").removeClass("nav-active");
    $("#search-reports").removeClass("nav-active");
    $("#search-offenders").removeClass("nav-active");
    $("#search-vehicles").removeClass("nav-active");
    $("#warrants").removeClass("nav-active");
    $("#bolos").removeClass("nav-active");
    $("#submit-report").removeClass("nav-active");
}

function WarrantTimer() {
    setInterval(function() {
        for (let key in mdtApp.warrants) {
            const warrant = mdtApp.warrants[key];
            const expire_time = new Date(warrant.expire).getTime();
            const t = expire_time - Date.now();

            if (t >= 0) {
                const days = Math.floor(t / (1000 * 60 * 60 * 24));
                const hours = Math.floor((t % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
                const mins = Math.floor((t % (1000 * 60 * 60)) / (1000 * 60));
                const secs = Math.floor((t % (1000 * 60)) / 1000);
                warrant.expire_time = days + "d " + hours + "h " + mins + "m " + secs + "s";
            } else {
                warrant.expire_time = "EXPIRED";
                $.post("http://vulcan_townhall_rob/deleteWarrant", JSON.stringify({
                    id: warrant.id
                }));
                Vue.delete(mdtApp.warrants, key)
            }
        }
    }, 1000);
}

function BoloTimer() {
    setInterval(function() {
        for (let key in mdtApp.bolos) {
            const bolo = mdtApp.bolos[key];
            const expire_time = new Date(bolo.expire).getTime();
            const t = expire_time - Date.now();

            if (t >= 0) {
                const days = Math.floor(t / (1000 * 60 * 60 * 24));
                const hours = Math.floor((t % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
                const mins = Math.floor((t % (1000 * 60 * 60)) / (1000 * 60));
                const secs = Math.floor((t % (1000 * 60)) / 1000);
                bolo.expire_time = days + "d " + hours + "h " + mins + "m " + secs + "s";
            } else {
                bolo.expire_time = "EXPIRED";
                $.post("http://vulcan_townhall_rob/deleteBolo", JSON.stringify({
                    id: bolo.id
                }));
                Vue.delete(mdtApp.bolos, key)
            }
        }
    }, 1000);
}

WarrantTimer();
BoloTimer();