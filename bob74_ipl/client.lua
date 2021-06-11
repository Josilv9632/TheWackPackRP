
Citizen.CreateThread(function()
    -- ====================================================================
    -- =--------------------- [GTA V: Single player] ---------------------=
    -- ====================================================================

    -- Michael: -802.311, 175.056, 72.8446
    Michael.LoadDefault()

    -- Simeon: -47.16170 -1115.3327 26.5
    Simeon.LoadDefault()

    -- Franklin's aunt: -9.96562, -1438.54, 31.1015
    FranklinAunt.LoadDefault()

    -- Franklin
    Franklin.LoadDefault()

    -- Floyd: -1150.703, -1520.713, 10.633
    Floyd.LoadDefault()

    -- Trevor: 1985.48132, 3828.76757, 32.5
    TrevorsTrailer.LoadDefault()

    -- Bahama Mamas: -1388.0013, -618.41967, 30.819599
    BahamaMamas.Enable(true)

    -- Zancudo Gates (GTAO like): -1600.30100000, 2806.73100000, 18.79683000
    ZancudoGates.LoadDefault()

    -- Other
    Ammunations.LoadDefault()
    LesterFactory.LoadDefault()
    StripClub.LoadDefault()

    Graffitis.Enable(true)

    -- Del Perro Pier - Ferris Wheel Fix:
    RequestIpl("ferris_finale_anim")
    RequestIpl("ferris_finale_anim_lod")

    -- Low Power St - Tunnel Roof Fence Fix:
    RequestIpl("dt1_03_gr_closed")

    -- The Mile High Club Skyscraper Construction Site @ Pillbox Hill
    -- Enable the missing elevator lifts:
    RequestIpl("dt1_21_prop_lift")
    RequestIpl("dt1_21_prop_lift_on")

    -- FIB Building Fountain Texture Fix:
    RequestIpl("DT1_05_HC_REMOVE")

    -- UFO
    UFO.Hippie.Enable(false)    -- 2490.47729, 3774.84351, 2414.035
    UFO.Chiliad.Enable(false)   -- 501.52880000, 5593.86500000, 796.23250000
    UFO.Zancudo.Enable(false)   -- -2051.99463, 3237.05835, 1456.97021
    
    -- Red Carpet: 300.5927, 199.7589, 104.3776
    RedCarpet.Enable(false)
    
    -- North Yankton: 3217.697, -4834.826, 111.8152
    NorthYankton.Enable(false)

    -- ====================================================================
    -- =-------------------------- [GTA Online] --------------------------=
    -- ====================================================================
    GTAOApartmentHi1.LoadDefault()      -- -35.31277 -580.4199 88.71221 (4 Integrity Way, Apt 30)
    GTAOApartmentHi2.LoadDefault()      -- -1477.14 -538.7499 55.5264 (Dell Perro Heights, Apt 7)
    GTAOHouseHi1.LoadDefault()          -- -169.286 486.4938 137.4436 (3655 Wild Oats Drive)
    GTAOHouseHi2.LoadDefault()          -- 340.9412 437.1798 149.3925 (2044 North Conker Avenue)
    GTAOHouseHi3.LoadDefault()          -- 373.023 416.105 145.7006 (2045 North Conker Avenue)
    GTAOHouseHi4.LoadDefault()          -- -676.127 588.612 145.1698 (2862 Hillcrest Avenue)
    GTAOHouseHi5.LoadDefault()          -- -763.107 615.906 144.1401 (2868 Hillcrest Avenue)
    GTAOHouseHi6.LoadDefault()          -- -857.798 682.563 152.6529 (2874 Hillcrest Avenue)
    GTAOHouseHi7.LoadDefault()          -- 120.5 549.952 184.097 (2677 Whispymound Drive)
    GTAOHouseHi8.LoadDefault()          -- -1288 440.748 97.69459 (2133 Mad Wayne Thunder)
    GTAOHouseMid1.LoadDefault()         -- 347.2686 -999.2955 -99.19622
    GTAOHouseLow1.LoadDefault()         -- 261.4586 -998.8196 -99.00863

    -- ====================================================================
    -- =------------------------ [DLC: High life] ------------------------=
    -- ====================================================================
    HLApartment1.LoadDefault()          -- -1468.14 -541.815 73.4442 (Dell Perro Heights, Apt 4)
    HLApartment2.LoadDefault()          -- -915.811 -379.432 113.6748 (Richard Majestic, Apt 2)
    HLApartment3.LoadDefault()          -- -614.86 40.6783 97.60007 (Tinsel Towers, Apt 42)
    HLApartment4.LoadDefault()          -- -773.407 341.766 211.397 (EclipseTowers, Apt 3)
    HLApartment5.LoadDefault()          -- -18.07856 -583.6725 79.46569 (4 Integrity Way, Apt 28)
    HLApartment6.LoadDefault()          -- -609.56690000 51.28212000 -183.98080

    -- ====================================================================
    -- =--------------- [DLC: Executives & Other Criminals] --------------=
    -- ====================================================================
    ExecApartment1.LoadDefault()    -- -787.7805 334.9232 215.8384 (EclipseTowers, Penthouse Suite 1)
    ExecApartment2.LoadDefault()    -- -773.2258 322.8252 194.8862 (EclipseTowers, Penthouse Suite 2)
    ExecApartment3.LoadDefault()    -- -787.7805 334.9232 186.1134 (EclipseTowers, Penthouse Suite 3)
    
    -- ====================================================================
    -- =-------------------- [DLC: Finance  & Felony] --------------------=
    -- ====================================================================
    FinanceOffice1.LoadDefault()    -- -141.1987, -620.913, 168.8205 (Arcadius Business Centre)
    FinanceOffice2.LoadDefault()    -- -75.8466, -826.9893, 243.3859 (Maze Bank Building)
    FinanceOffice3.LoadDefault()    -- -1579.756, -565.0661, 108.523 (Lom Bank)
    FinanceOffice4.LoadDefault()    -- -1392.667, -480.4736, 72.04217 (Maze Bank West)

    -- ====================================================================
    -- =-------------------------- [DLC: Bikers] -------------------------=
    -- ====================================================================
    BikerCocaine.LoadDefault()	        -- Cocaine lockup: 1093.6, -3196.6, -38.99841
    BikerCounterfeit.LoadDefault()      -- Counterfeit cash factory: 1121.897, -3195.338, -40.4025
    BikerDocumentForgery.LoadDefault()  -- Document forgery: 1165, -3196.6, -39.01306
    BikerMethLab.LoadDefault()          -- Meth lab: 1009.5, -3196.6, -38.99682
    BikerWeedFarm.LoadDefault()         -- Weed farm: 1051.491, -3196.536, -39.14842
    BikerClubhouse1.LoadDefault()       -- 1107.04, -3157.399, -37.51859
    BikerClubhouse2.LoadDefault()       -- 998.4809, -3164.711, -38.90733

    -- ====================================================================
    -- =---------------------- [DLC: Import/Export] ----------------------=
    -- ====================================================================
    ImportCEOGarage1.LoadDefault()             -- Arcadius Business Centre
    ImportCEOGarage2.LoadDefault()             -- Maze Bank Building               /!\ Do not load parts Garage1, Garage2 and Garage3 at the same time (overlaping issues)
    ImportCEOGarage3.LoadDefault()             -- Lom Bank                         /!\ Do not load parts Garage1, Garage2 and Garage3 at the same time (overlaping issues)
    ImportCEOGarage4.LoadDefault()             -- Maze Bank West                   /!\ Do not load parts Garage1, Garage2 and Garage3 at the same time (overlaping issues)
    ImportVehicleWarehouse.LoadDefault()       -- Vehicle warehouse: 994.5925, -3002.594, -39.64699

    -- ====================================================================
    -- =------------------------ [DLC: Gunrunning] -----------------------=
    -- ====================================================================
    GunrunningBunker.LoadDefault()  -- 892.6384, -3245.8664, -98.2645
    
    -- ====================================================================
    -- =---------------------- [DLC: Smuggler's Run] ---------------------=
    -- ====================================================================
    SmugglerHangar.LoadDefault()    -- -1267.0 -3013.135 -49.5

    -- ====================================================================
    -- =-------------------- [DLC: The Doomsday Heist] -------------------=
    -- ====================================================================
    DoomsdayFacility.LoadDefault()

    -- ====================================================================
    -- =----------------------- [DLC: After Hours] -----------------------=
    -- ====================================================================
    AfterHoursNightclubs.LoadDefault()          -- -1604.664, -3012.583, -78.000

end)

    -- ====================================================================
    -- =----------------------- [DLC: Casino] ----------------------------=
    -- ====================================================================

    Citizen.CreateThread(function() 
        RequestAllIpls() 
    end) 
    
    function RequestAllIpls() 
        RequestIpl("vw_casino_main") -- 1100.000, 220.000, -50.000
    
        RequestIpl("vw_casino_garage") -- 1295.000, 230.000, -50.000
    
        RequestIpl("vw_casino_carpark") -- 1380.000, 200.000, -50.000
    
        RequestIpl("hei_dlc_casino_aircon")
    
        RequestIpl("hei_dlc_casino_aircon_lod")
    
        RequestIpl("hei_dlc_casino_door")
    
        RequestIpl("hei_dlc_casino_door_lod")
    
        RequestIpl("hei_dlc_vw_roofdoors_locked")
    
        RequestIpl("hei_dlc_windows_casino")
    
        RequestIpl("hei_dlc_windows_casino_lod")
    
        RequestIpl("vw_ch3_additions")
    
        RequestIpl("vw_ch3_additions_long_0")
    
        RequestIpl("vw_ch3_additions_strm_0")
    
        RequestIpl("vw_dlc_casino_door")
    
        RequestIpl("vw_dlc_casino_door_lod")
    
        RequestIpl("vw_casino_billboard")
    
        RequestIpl("vw_casino_billboard_lod(1)")
    
        RequestIpl("vw_casino_billboard_lod")
    
        RequestIpl("vw_int_placement_vw")
        RequestIpl("h4_mph4_terrain_occ_09")
            RequestIpl("h4_mph4_terrain_occ_06")
            RequestIpl("h4_mph4_terrain_occ_05")
            RequestIpl("h4_mph4_terrain_occ_01")
            RequestIpl("h4_mph4_terrain_occ_00")
            RequestIpl("h4_mph4_terrain_occ_08")
            RequestIpl("h4_mph4_terrain_occ_04")
            RequestIpl("h4_mph4_terrain_occ_07")
            RequestIpl("h4_mph4_terrain_occ_03")
            RequestIpl("h4_mph4_terrain_occ_02")
            RequestIpl("h4_islandx_terrain_04")
            RequestIpl("h4_islandx_terrain_05_slod")
            RequestIpl("h4_islandx_terrain_props_05_d_slod")
            RequestIpl("h4_islandx_terrain_02")
            RequestIpl("h4_islandx_terrain_props_05_a_lod")
            RequestIpl("h4_islandx_terrain_props_05_c_lod")
            RequestIpl("h4_islandx_terrain_01")
            RequestIpl("h4_mph4_terrain_04")
            RequestIpl("h4_mph4_terrain_06")
            RequestIpl("h4_islandx_terrain_04_lod")
            RequestIpl("h4_islandx_terrain_03_lod")
            RequestIpl("h4_islandx_terrain_props_06_a")
            RequestIpl("h4_islandx_terrain_props_06_a_slod")
            RequestIpl("h4_islandx_terrain_props_05_f_lod")
            RequestIpl("h4_islandx_terrain_props_06_b")
            RequestIpl("h4_islandx_terrain_props_05_b_lod")
            RequestIpl("h4_mph4_terrain_lod")
            RequestIpl("h4_islandx_terrain_props_05_e_lod")
            RequestIpl("h4_islandx_terrain_05_lod")
            RequestIpl("h4_mph4_terrain_02")
            RequestIpl("h4_islandx_terrain_props_05_a")
            RequestIpl("h4_mph4_terrain_01_long_0")
            RequestIpl("h4_islandx_terrain_03")
            RequestIpl("h4_islandx_terrain_props_06_b_slod")
            RequestIpl("h4_islandx_terrain_01_slod")
            RequestIpl("h4_islandx_terrain_04_slod")
            RequestIpl("h4_islandx_terrain_props_05_d_lod")
            RequestIpl("h4_islandx_terrain_props_05_f_slod")
            RequestIpl("h4_islandx_terrain_props_05_c")
            RequestIpl("h4_islandx_terrain_02_lod")
            RequestIpl("h4_islandx_terrain_06_slod")
            RequestIpl("h4_islandx_terrain_props_06_c_slod")
            RequestIpl("h4_islandx_terrain_props_06_c")
            RequestIpl("h4_islandx_terrain_01_lod")
            RequestIpl("h4_mph4_terrain_06_strm_0")
            RequestIpl("h4_islandx_terrain_05")
            RequestIpl("h4_islandx_terrain_props_05_e_slod")
            RequestIpl("h4_islandx_terrain_props_06_c_lod")
            RequestIpl("h4_mph4_terrain_03")
            RequestIpl("h4_islandx_terrain_props_05_f")
            RequestIpl("h4_islandx_terrain_06_lod")
            RequestIpl("h4_mph4_terrain_01")
            RequestIpl("h4_islandx_terrain_06")
            RequestIpl("h4_islandx_terrain_props_06_a_lod")
            RequestIpl("h4_islandx_terrain_props_06_b_lod")
            RequestIpl("h4_islandx_terrain_props_05_b")
            RequestIpl("h4_islandx_terrain_02_slod")
            RequestIpl("h4_islandx_terrain_props_05_e")
            RequestIpl("h4_islandx_terrain_props_05_d")
            RequestIpl("h4_mph4_terrain_05")
            RequestIpl("h4_mph4_terrain_02_grass_2")
            RequestIpl("h4_mph4_terrain_01_grass_1")
            RequestIpl("h4_mph4_terrain_05_grass_0")
            RequestIpl("h4_mph4_terrain_01_grass_0")
            RequestIpl("h4_mph4_terrain_02_grass_1")
            RequestIpl("h4_mph4_terrain_02_grass_0")
            RequestIpl("h4_mph4_terrain_02_grass_3")
            RequestIpl("h4_mph4_terrain_04_grass_0")
            RequestIpl("h4_mph4_terrain_06_grass_0")
            RequestIpl("h4_mph4_terrain_04_grass_1")
            RequestIpl("island_distantlights")
            RequestIpl("island_lodlights")
            RequestIpl("h4_mph4_island_placement")
            RequestIpl("h4_islandx_mansion_vault")
            RequestIpl("h4_islandx_checkpoint_props")
            RequestIpl("h4_islandairstrip_hangar_props_slod")
            RequestIpl("h4_se_ipl_01_lod")
            RequestIpl("h4_ne_ipl_00_slod")
            RequestIpl("h4_se_ipl_06_slod")
            RequestIpl("h4_ne_ipl_00")
            RequestIpl("h4_se_ipl_02")
            RequestIpl("h4_islandx_barrack_props_lod")
            RequestIpl("h4_se_ipl_09_lod")
            RequestIpl("h4_ne_ipl_05")
            RequestIpl("h4_mph4_island_se_placement")
            RequestIpl("h4_ne_ipl_09")
            RequestIpl("h4_islandx_mansion_props_slod")
            RequestIpl("h4_se_ipl_09")
            RequestIpl("h4_mph4_mansion_b")
            RequestIpl("h4_islandairstrip_hangar_props_lod")
            RequestIpl("h4_islandx_mansion_entrance_fence")
            RequestIpl("h4_nw_ipl_09")
            RequestIpl("h4_nw_ipl_02_lod")
            RequestIpl("h4_ne_ipl_09_slod")
            RequestIpl("h4_sw_ipl_02")
            RequestIpl("h4_islandx_checkpoint")
            RequestIpl("h4_islandxdock_water_hatch")
            RequestIpl("h4_nw_ipl_04_lod")
            RequestIpl("h4_islandx_maindock_props")
            RequestIpl("h4_beach")
            RequestIpl("h4_islandx_mansion_lockup_03_lod")
            RequestIpl("h4_ne_ipl_04_slod")
            RequestIpl("h4_mph4_island_nw_placement")
            RequestIpl("h4_ne_ipl_08_slod")
            RequestIpl("h4_nw_ipl_09_lod")
            RequestIpl("h4_se_ipl_08_lod")
            RequestIpl("h4_islandx_maindock_props_lod")
            RequestIpl("h4_se_ipl_03")
            RequestIpl("h4_sw_ipl_02_slod")
            RequestIpl("h4_nw_ipl_00")
            RequestIpl("h4_islandx_mansion_b_side_fence")
            RequestIpl("h4_ne_ipl_01_lod")
            RequestIpl("h4_se_ipl_06_lod")
            RequestIpl("h4_ne_ipl_03")
            RequestIpl("h4_islandx_maindock")
            RequestIpl("h4_se_ipl_01")
            RequestIpl("h4_sw_ipl_07")
            RequestIpl("h4_islandx_maindock_props_2")
            RequestIpl("h4_islandxtower_veg")
            RequestIpl("h4_mph4_island_sw_placement")
            RequestIpl("h4_se_ipl_01_slod")
            RequestIpl("h4_mph4_wtowers")
            RequestIpl("h4_se_ipl_02_lod")
            RequestIpl("h4_islandx_mansion")
            RequestIpl("h4_nw_ipl_04")
            RequestIpl("h4_mph4_airstrip_interior_0_airstrip_hanger")
            RequestIpl("h4_islandx_mansion_lockup_01")
            RequestIpl("h4_islandx_barrack_props")
            RequestIpl("h4_nw_ipl_07_lod")
            RequestIpl("h4_nw_ipl_00_slod")
            RequestIpl("h4_sw_ipl_08_lod")
            RequestIpl("h4_islandxdock_props_slod")
            RequestIpl("h4_islandx_mansion_lockup_02")
            RequestIpl("h4_islandx_mansion_slod")
            RequestIpl("h4_sw_ipl_07_lod")
            RequestIpl("h4_sw_ipl_02_lod")
            RequestIpl("h4_se_ipl_04_slod")
            RequestIpl("h4_islandx_checkpoint_props_lod")
            RequestIpl("h4_se_ipl_04")
            RequestIpl("h4_se_ipl_07")
            RequestIpl("h4_mph4_mansion_b_strm_0")
            RequestIpl("h4_nw_ipl_09_slod")
            RequestIpl("h4_se_ipl_07_lod")
            RequestIpl("h4_islandx_maindock_slod")
            RequestIpl("h4_islandx_mansion_lod")
            RequestIpl("h4_sw_ipl_05_lod")
            RequestIpl("h4_nw_ipl_08")
            RequestIpl("h4_islandairstrip_slod")
            RequestIpl("h4_nw_ipl_07")
            RequestIpl("h4_islandairstrip_propsb_lod")
            RequestIpl("h4_islandx_checkpoint_props_slod")
            RequestIpl("h4_aa_guns_lod")
            RequestIpl("h4_sw_ipl_06")
            RequestIpl("h4_islandx_maindock_props_2_slod")
            RequestIpl("h4_islandx_mansion_office")
            RequestIpl("h4_islandx_maindock_lod")
            RequestIpl("h4_mph4_dock")
            RequestIpl("h4_islandairstrip_propsb")
            RequestIpl("h4_islandx_mansion_lockup_03")
            RequestIpl("h4_nw_ipl_01_lod")
            RequestIpl("h4_se_ipl_05_slod")
            RequestIpl("h4_sw_ipl_01_lod")
            RequestIpl("h4_nw_ipl_05")
            RequestIpl("h4_islandxdock_props_2_lod")
            RequestIpl("h4_ne_ipl_04_lod")
            RequestIpl("h4_ne_ipl_01")
            RequestIpl("h4_beach_party_lod")
            RequestIpl("h4_islandx_mansion_lights")
            RequestIpl("h4_sw_ipl_00_lod")
            RequestIpl("h4_islandx_mansion_guardfence")
            RequestIpl("h4_beach_props_party")
            RequestIpl("h4_ne_ipl_03_lod")
            RequestIpl("h4_islandx_mansion_b")
            RequestIpl("h4_beach_bar_props")
            RequestIpl("h4_ne_ipl_04")
            RequestIpl("h4_sw_ipl_08_slod")
            RequestIpl("h4_islandxtower")
            RequestIpl("h4_se_ipl_00_slod")
            RequestIpl("h4_islandx_barrack_hatch")
            RequestIpl("h4_ne_ipl_06_slod")
            RequestIpl("h4_ne_ipl_03_slod")
            RequestIpl("h4_sw_ipl_09_slod")
            RequestIpl("h4_ne_ipl_02_slod")
            RequestIpl("h4_nw_ipl_04_slod")
            RequestIpl("h4_ne_ipl_05_lod")
            RequestIpl("h4_nw_ipl_08_slod")
            RequestIpl("h4_sw_ipl_05_slod")
            RequestIpl("h4_islandx_mansion_b_lod")
            RequestIpl("h4_ne_ipl_08")
            RequestIpl("h4_islandxdock_props")
            RequestIpl("h4_islandairstrip_doorsopen_lod")
            RequestIpl("h4_se_ipl_05_lod")
            RequestIpl("h4_islandxcanal_props_slod")
            RequestIpl("h4_se_ipl_02_slod")
            RequestIpl("h4_nw_ipl_02")
            RequestIpl("h4_ne_ipl_08_lod")
            RequestIpl("h4_sw_ipl_08")
            RequestIpl("h4_islandairstrip")
            RequestIpl("h4_islandairstrip_props_lod")
            RequestIpl("h4_se_ipl_05")
            RequestIpl("h4_ne_ipl_02_lod")
            RequestIpl("h4_islandx_maindock_props_2_lod")
            RequestIpl("h4_sw_ipl_03_slod")
            RequestIpl("h4_ne_ipl_01_slod")
            RequestIpl("h4_beach_props_slod")
            RequestIpl("h4_underwater_gate_closed")
            RequestIpl("h4_ne_ipl_00_lod")
            RequestIpl("h4_islandairstrip_doorsopen")
            RequestIpl("h4_sw_ipl_01_slod")
            RequestIpl("h4_se_ipl_00")
            RequestIpl("h4_se_ipl_06")
            RequestIpl("h4_islandx_mansion_lockup_02_lod")
            RequestIpl("h4_islandxtower_veg_lod")
            RequestIpl("h4_sw_ipl_00")
            RequestIpl("h4_se_ipl_04_lod")
            RequestIpl("h4_nw_ipl_07_slod")
            RequestIpl("h4_islandx_mansion_props_lod")
            RequestIpl("h4_islandairstrip_hangar_props")
            RequestIpl("h4_nw_ipl_06_lod")
            RequestIpl("h4_islandxtower_lod")
            RequestIpl("h4_islandxdock_lod")
            RequestIpl("h4_islandxdock_props_lod")
            RequestIpl("h4_beach_party")
            RequestIpl("h4_nw_ipl_06_slod")
            RequestIpl("h4_nw_ipl_00_lod")
            RequestIpl("h4_ne_ipl_02")
            RequestIpl("h4_islandxdock_slod")
            RequestIpl("h4_se_ipl_07_slod")
            RequestIpl("h4_islandxdock")
            RequestIpl("h4_islandxdock_props_2_slod")
            RequestIpl("h4_islandairstrip_props")
            RequestIpl("h4_sw_ipl_09")
            RequestIpl("h4_ne_ipl_06")
            RequestIpl("h4_se_ipl_03_lod")
            RequestIpl("h4_nw_ipl_03")
            RequestIpl("h4_islandx_mansion_lockup_01_lod")
            RequestIpl("h4_beach_lod")
            RequestIpl("h4_ne_ipl_07_lod")
            RequestIpl("h4_nw_ipl_01")
            RequestIpl("h4_mph4_island_lod")
            RequestIpl("h4_islandx_mansion_office_lod")
            RequestIpl("h4_islandairstrip_lod")
            RequestIpl("h4_beach_props_lod")
            RequestIpl("h4_nw_ipl_05_slod")
            RequestIpl("h4_islandx_checkpoint_lod")
            RequestIpl("h4_nw_ipl_05_lod")
            RequestIpl("h4_nw_ipl_03_slod")
            RequestIpl("h4_nw_ipl_03_lod")
            RequestIpl("h4_sw_ipl_05")
            RequestIpl("h4_mph4_mansion")
            RequestIpl("h4_sw_ipl_03")
            RequestIpl("h4_se_ipl_08_slod")
            RequestIpl("h4_mph4_island_ne_placement")
            RequestIpl("h4_aa_guns")
            RequestIpl("h4_islandairstrip_propsb_slod")
            RequestIpl("h4_sw_ipl_01")
            RequestIpl("h4_mansion_remains_cage")
            RequestIpl("h4_nw_ipl_01_slod")
            RequestIpl("h4_ne_ipl_06_lod")
            RequestIpl("h4_se_ipl_08")
            RequestIpl("h4_sw_ipl_04_slod")
            RequestIpl("h4_sw_ipl_04_lod")
            RequestIpl("h4_mph4_beach")
            RequestIpl("h4_sw_ipl_06_lod")
            RequestIpl("h4_sw_ipl_06_slod")
            RequestIpl("h4_se_ipl_00_lod")
            RequestIpl("h4_ne_ipl_07_slod")
            RequestIpl("h4_mph4_mansion_strm_0")
            RequestIpl("h4_nw_ipl_02_slod")
            RequestIpl("h4_mph4_airstrip")
            RequestIpl("h4_island_padlock_props")
            RequestIpl("h4_islandairstrip_props_slod")
            RequestIpl("h4_nw_ipl_06")
            RequestIpl("h4_sw_ipl_09_lod")
            RequestIpl("h4_islandxcanal_props_lod")
            RequestIpl("h4_ne_ipl_05_slod")
            RequestIpl("h4_se_ipl_09_slod")
            RequestIpl("h4_islandx_mansion_vault_lod")
            RequestIpl("h4_se_ipl_03_slod")
            RequestIpl("h4_nw_ipl_08_lod")
            RequestIpl("h4_islandx_barrack_props_slod")
            RequestIpl("h4_islandxtower_veg_slod")
            RequestIpl("h4_sw_ipl_04")
            RequestIpl("h4_islandx_mansion_props")
            RequestIpl("h4_islandxtower_slod")
            RequestIpl("h4_beach_props")
            RequestIpl("h4_islandx_mansion_b_slod")
            RequestIpl("h4_islandx_maindock_props_slod")
            RequestIpl("h4_sw_ipl_07_slod")
            RequestIpl("h4_ne_ipl_07")
            RequestIpl("h4_islandxdock_props_2")
            RequestIpl("h4_ne_ipl_09_lod")
            RequestIpl("h4_islandxcanal_props")
            RequestIpl("h4_beach_slod")
            RequestIpl("h4_sw_ipl_00_slod")
            RequestIpl("h4_sw_ipl_03_lod")
            RequestIpl("h4_islandx_disc_strandedshark")
            RequestIpl("h4_islandx_disc_strandedshark_lod")
            RequestIpl("h4_islandx")
            RequestIpl("h4_islandx_props_lod")
            RequestIpl("h4_mph4_island_strm_0")
            RequestIpl("h4_islandx_sea_mines")
            RequestIpl("h4_mph4_island")
            RequestIpl("h4_boatblockers")
            RequestIpl("h4_mph4_island_long_0")
            RequestIpl("h4_islandx_disc_strandedwhale")
            RequestIpl("h4_islandx_disc_strandedwhale_lod")
            RequestIpl("h4_islandx_props")
            RequestIpl("h4_int_placement_h4_interior_1_dlc_int_02_h4_milo_")
            RequestIpl("h4_int_placement_h4_interior_0_int_sub_h4_milo_")
            RequestIpl("h4_int_placement_h4")
    
    
            PinInteriorInMemory(274689)
    
            RequestIpl("vw_casino_penthouse") -- 976.636, 70.295, 115.164
    
            RequestIpl("vw_dlc_casino_apart") -- 976.636, 70.295, 115.164
    
            ActivateInteriorEntitySet(274689, "casino_manager_default")
    
            --ActivateInteriorEntitySet(274689, "casino_manager_workout")
    
            ActivateInteriorEntitySet(274689, "Set_Pent_Tint_Shell")
    
            SetInteriorEntitySetColor(274689, "Set_Pent_Tint_Shell", 1)
    
            ActivateInteriorEntitySet(274689, "Set_Pent_Pattern_01")
    
            --ActivateInteriorEntitySet(274689, "Set_Pent_Pattern_02")
    
            --ActivateInteriorEntitySet(274689, "Set_Pent_Pattern_03")
    
            --ActivateInteriorEntitySet(274689, "Set_Pent_Pattern_04")
    
            --ActivateInteriorEntitySet(274689, "Set_Pent_Pattern_05")
    
            --ActivateInteriorEntitySet(274689, "Set_Pent_Pattern_06")
    
            --ActivateInteriorEntitySet(274689, "Set_Pent_Pattern_07")
    
            --ActivateInteriorEntitySet(274689, "Set_Pent_Pattern_08")
    
            --ActivateInteriorEntitySet(274689, "Set_Pent_Pattern_09")
    
            ActivateInteriorEntitySet(274689, "Set_Pent_Spa_Bar_Open")
    
            --ActivateInteriorEntitySet(274689, "Set_Pent_Spa_Bar_Closed", 1)
    
            ActivateInteriorEntitySet(274689, "Set_Pent_Media_Bar_Open")
    
            --ActivateInteriorEntitySet(274689, "Set_Pent_Media_Bar_Closed", 1)
    
            ActivateInteriorEntitySet(274689, "Set_Pent_Dealer")
    
            --ActivateInteriorEntitySet(274689, "Set_Pent_NoDealer")
    
            
    
            ActivateInteriorEntitySet(274689, "Set_Pent_Arcade_Modern")
    
            --ActivateInteriorEntitySet(274689, "Set_Pent_Arcade_Retro")
    
            ActivateInteriorEntitySet(274689, "Set_Pent_Bar_Clutter")
    
            ActivateInteriorEntitySet(274689, "Set_Pent_Clutter_01")
    
            --ActivateInteriorEntitySet(274689, "Set_Pent_Clutter_02")
    
            --ActivateInteriorEntitySet(274689, "Set_Pent_Clutter_03")
    
            ActivateInteriorEntitySet(274689, "set_pent_bar_light_0")
    
            --ActivateInteriorEntitySet(274689, "set_pent_bar_light_01")
    
            --ActivateInteriorEntitySet(274689, "set_pent_bar_light_01")
    
            ActivateInteriorEntitySet(274689, "set_pent_bar_party_0")
    
            --ActivateInteriorEntitySet(274689, "set_pent_bar_party_1")
    
            --ActivateInteriorEntitySet(274689, "set_pent_bar_party_2")
    
            ActivateInteriorEntitySet(274689, "set_pent_bar_party_after")
    
            --ActivateInteriorEntitySet(274689, "Set_Pent_GUEST_BLOCKER")
    
            --ActivateInteriorEntitySet(274689, "Set_Pent_OFFICE_BLOCKER")
    
            --ActivateInteriorEntitySet(274689, "Set_Pent_CINE_BLOCKER")
    
            --ActivateInteriorEntitySet(274689, "Set_Pent_SPA_BLOCKER")
    
            --ActivateInteriorEntitySet(274689, "Set_Pent_BAR_BLOCKER")
    
                            
    
            ActivateInteriorEntitySet(274689, "vw_vwint02_pent_spax_shell")             
    
            ActivateInteriorEntitySet(274689, "vw_vwint02_pent_spa_shell")              
    
            ActivateInteriorEntitySet(274689, "vw_vwint02_pent_sbt_shell")
    
            ActivateInteriorEntitySet(274689, "vw_vwint02_pent_mbt_shell")
    
            ActivateInteriorEntitySet(274689, "v_ilev_garageliftdoor")
    
            -- Windows
    
            ActivateInteriorEntitySet(274689, "vw_vwint02_pent_hal_window")
    
            ActivateInteriorEntitySet(274689, "vw_vwint02_pent_mb_window")
    
            ActivateInteriorEntitySet(274689, "vw_vwint02_pent_lou_window")
    
            ActivateInteriorEntitySet(274689, "vw_vwint02_pent_sb_window")
    
            ActivateInteriorEntitySet(274689, "vw_vwint02_pent_din_window")
    
            ActivateInteriorEntitySet(274689, "vw_vwint02_pent_bar_window")
    
            ActivateInteriorEntitySet(274689, "vw_vwint02_pent_off_window")
    
            ActivateInteriorEntitySet(274689, "vw_vwint02_pent_lv_window")
    
            ActivateInteriorEntitySet(274689, "vw_vwint02_pent_ex_window")
    
            ActivateInteriorEntitySet(274689, "vw_vwint02_pent_spax_window")
    
            ActivateInteriorEntitySet(274689, "vw_vwint02_pent_spa_window")
    
    
    end