start_location = nil
start_locations = {
  ["King's_Pass"] = "setting_start_kings_pass",
  ["Stag_Nest"] = "setting_start_stag_nest",
  ["Left_Fog_Canyon"] = "setting_start_west_fog_canyon",
  ["Right_Fog_Canyon"] = "setting_start_east_fog_canyon",
  ["Queen's_Station"] = "setting_start_queens_station",
  ["Fungal_Core"] = "setting_start_fungal_core",
  ["Distant_Village"] = "setting_start_distant_village",
  ["Abyss"] = "setting_start_abyss",
  ["Hive"] = "setting_start_hive",
  ["Central_Kingdom's_Edge"] = "setting_start_kingdoms_edge",
  ["Hallownest's_Crown"] = "setting_start_hallownests_crown",
  ["Crystallized_Mound"] = "setting_start_crystallized_mound",
  ["Upper_Left_Waterways"] = "setting_start_royal_waterways",
  ["Top_Left_Queen's_Gardens"] = "setting_start_queens_gardens",
  ["Greenpath"] = "setting_start_far_greenpath",
  ["Greenpath"] = "setting_start_greenpath",
  ["Upper_King's_Station"] = "setting_start_kings_station",
  ["Top_Kingdom's_Edge"] = "setting_start_outside_colosseum",
  ["Left_City"] = "setting_start_city_of_tears",
}

areas = {
  ["King's_Pass"] = false,
  ["Dirtmouth"] = false,
  ["Can_Stag"] = false,
  ["Crossroads"] = false,
  ["Ancestral_Mound"] = false,
  ["Greenpath"] = false,
  ["Lake_of_Unn"] = false,
  ["Stone_Sanctuary"] = false,
  ["Greenpath-QG"] = false,
  ["Left_Fog_Canyon"] = false,
  ["Overgrown_Mound"] = false,
  ["Right_Fog_Canyon"] = false,
  ["Teacher's_Archives"] = false,
  ["Queen's_Station"] = false,
  ["Fungal_Wastes"] = false,
  ["Bottom_Left_Fungal_Wastes"] = false,
  ["Fungal_Core"] = false,
  ["Mantis_Outskirts"] = false,
  ["Mantis_Village"] = false,
  ["Left_City"] = false,
  ["Left_Elevator"] = false,
  ["Soul_Sanctum"] = false,
  ["Right_City"] = false,
  ["Lower_King's_Station"] = false,
  ["Upper_King's_Station"] = false,
  ["Right_Elevator"] = false,
  ["Pleasure_House"] = false,
  ["Tower_of_Love"] = false,
  ["Upper_Left_Waterways"] = false,
  ["Central_Left_Waterways"] = false,
  ["Far_Left_Waterways"] = false,
  ["Lower_Left_Waterways"] = false,
  ["Waterways_Shaft"] = false,
  ["Right_Waterways"] = false,
  ["Junk_Pit"] = false,
  ["Isma's_Grove"] = false,
  ["Emilitia"] = false,
  ["Upper_Deepnest"] = false,
  ["Far_Right_Deepnest"] = false,
  ["Deepnest"] = false,
  ["Failed_Tramway"] = false,
  ["Dark_Deepnest"] = false,
  ["Weaver's_Den"] = false,
  ["Distant_Village"] = false,
  ["Beast's_Den"] = false,
  ["Lower_Tram"] = false,
  ["Upper_Basin"] = false,
  ["Mid_Basin"] = false,
  ["Lower_Basin"] = false,
  ["Far_Left_Basin"] = false,
  ["Palace_Grounds"] = false,
  ["Abyss"] = false,
  ["Lower_Kingdom's_Edge"] = false,
  ["Central_Kingdom's_Edge"] = false,
  ["Upper_Kingdom's_Edge"] = false,
  ["Center_Right_Kingdom's_Edge"] = false,
  ["Oro_Bench"] = false,
  ["Cast_Off_Shell"] = false,
  ["Top_Kingdom's_Edge"] = false,
  ["Hive"] = false,
  ["Colosseum"] = false,
  ["Pale_Lurker_Area"] = false,
  ["Crystal_Peak"] = false,
  ["Upper_Crystal_Peak"] = false,
  ["Hallownest's_Crown"] = false,
  ["Crystallized_Mound"] = false,
  ["Upper_Tram"] = false,
  ["Upper_Resting_Grounds"] = false,
  ["Spirits_Glade"] = false,
  ["Lower_Resting_Grounds"] = false,
  ["Blue_Lake"] = false,
  ["Top_Right_Queen's_Gardens"] = false,
  ["Bottom_Right_Queen's_Gardens"] = false,
  ["Bottom_Left_Queen's_Gardens"] = false,
  ["Top_Left_Queen's_Gardens"] = false,
  ["Far_Queen's_Gardens"] = false,
  ["Howling_Cliffs"] = false,
  ["Stag_Nest"] = false,
}

area_connections = {
  ["King's_Pass"] = {
    ["Dirtmouth"] = function()
      return true
    end,
    ["Upper_Crystal_Peak"] = function()
      return has("claw") and has("wings") and has("superdash")
    end,
    ["Howling_Cliffs"] = function()
      return has("claw") or (has("wings") and has("spicy_skips"))
    end
  },
  ["Dirtmouth"] = {
    ["King's_Pass"] = function()
      return has("claw")
    end,
    ["Crossroads"] = function()
      return true
    end,
    ["Crystal_Peak"] = function()
      return has("claw") and has("wings") and has("superdash")
    end
  },
  ["Can_Stag"] = {
    ["Dirtmouth"] = function()
      return has("stag_dirtmouth")
    end,
    ["Crossroads"] = function()
      return has("stag_crossroads")
    end,
    ["Greenpath"] = function()
      return has("stag_greenpath")
    end,
    ["Queen's_Station"] = function()
      return has("stag_queens_station")
    end,
    ["Left_Elevator"] = function()
      return has("stag_city_storerooms")
    end,
    ["Lower_King's_Station"] = function()
      return has("stag_kings_station")
    end,
    ["Distant_Village"] = function()
      return has("stag_distant_village")
    end,
    ["Beast's_Den"] = function()
      return has("stag_distant_village")
    end,
    ["Palace_Grounds"] = function()
      return has("stag_hidden_station")
    end,
    ["Upper_Resting_Grounds"] = function()
      return has("stag_resting_grounds")
    end,
    ["Top_Left_Queen's_Gardens"] = function()
      return has("stag_queens_gardens") and (has("claw") or has("wings") or (has("dash") and has("spicy_skips")))
    end,
    ["Stag_Nest"] = function()
      return has("allstag", 9) or has("stag_stagnest")
    end
  },
  ["Crossroads"] = {
    ["Dirtmouth"] = function()
      return true
    end,
    ["Can_Stag"] = function()
      return true
    end,
    ["Ancestral_Mound"] = function()
      return true
    end,
    ["Greenpath"] = function()
      return baldurs() > 0
    end,
    ["Right_Fog_Canyon"] = function()
      return has("acid") or skipacid() > 0 or (has("wings") and has("dash") and has("acid_skips"))
    end,
    ["Fungal_Wastes"] = function()
      return has("dash") or has("wings") or infected() > 0 or (has("claw") and airstall() > 0)
    end,
    ["Crystal_Peak"] = function()
      return has("lantern") or has("quake")
    end,
    ["Upper_Tram"] = function()
      return has("tram")
    end,
    ["Blue_Lake"] = function()
      return (has("claw") and (has("wings") or has("superdash"))) or (has("shade_skips") and (has("claw") or has("wings") or (has("spicy_skips") and has("dash") and has("fireball"))))
    end
  },
  ["Ancestral_Mound"] = {
    ["Crossroads"] = function()
      return true
    end
  },
  ["Greenpath"] = {
    ["Can_Stag"] = function()
      return true
    end,
    ["Lake_of_Unn"] = function()
      return has("dash") or has("wings") or has("superdash") or has("acid") or airstall() > 0
    end,
    ["Stone_Sanctuary"] = function()
      return has("lantern") or has("dark_rooms")
    end,
    ["Left_Fog_Canyon"] = function()
      return true
    end,
    ["Howling_Cliffs"] = function()
      return (has("claw") and (baldurs() > 0 or has("wings"))) or (has("wings") and airstall() > 0 and has("shade_skips") and has("spicy_skips"))
    end
  },
  ["Lake_of_Unn"] = {
    ["Greenpath"] = function()
      return has("dash") or has("wings") or (has("acid") and has("claw"))
    end
  },
  ["Stone_Sanctuary"] = {
    ["Greenpath"] = function()
      return has("lantern")
    end
  },
  ["Greenpath-QG"] = {
    ["Greenpath"] = function()
      return has("claw") or has("wings")
    end,
    ["Far_Queen's_Gardens"] = function()
      return has("claw") or has("wings")
    end
  },
  ["Left_Fog_Canyon"] = {
    ["Greenpath"] = function()
      return true
    end,
    ["Overgrown_Mound"] = function()
      return has("claw") or (has("wings") and has("mild_skips"))
    end,
    ["Right_Fog_Canyon"] = function()
      return has("shade_cloak")
    end,
    ["Queen's_Station"] = function()
      return true
    end,
    ["Top_Right_Queen's_Gardens"] = function()
      return has("acid") or skipacid() > 0 or has("shade_cloak")
    end
  },
  ["Overgrown_Mound"] = {

  },
  ["Right_Fog_Canyon"] = {
    ["Crossroads"] = function()
      return has("claw") and (skipacid() > 0 or has("acid") or (has("wings") and has("dash") and has("acid_skips")))
    end,
    ["Left_Fog_Canyon"] = function()
      return true
    end,
    ["Teacher's_Archives"] = function()
      return true
    end
  },
  ["Teacher's_Archives"] = {
    ["Right_Fog_Canyon"] = function()
      return true
    end
  },
  ["Queen's_Station"] = {
    ["Can_Stag"] = function()
      return true
    end,
    ["Left_Fog_Canyon"] = function()
      return true
    end,
    ["Fungal_Wastes"] = function()
      return has("claw") or has("wings") or has("dash") or has("superdash") or airstall() > 0
    end
  },
  ["Fungal_Wastes"] = {
    ["Crossroads"] = function()
      return has("acid") or has("dash") or has("superdash") or has("claw") or has("wings")
    end,
    ["Right_Fog_Canyon"] = function()
      return has("acid")
    end,
    ["Queen's_Station"] = function()
      return true
    end,
    ["Bottom_Left_Fungal_Wastes"] = function()
      return has("claw") or (has("wings") and (has("shade_skips") or has("spicy_skips")))
    end,
    ["Fungal_Core"] = function()
      return has("claw") and has("wings")
    end,
    ["Mantis_Outskirts"] = function()
      return true
    end,
    ["Mantis_Village"] = function()
      return has("mild_skips") or has("claw") or has("wings")
    end,
    ["Left_City"] = function()
      return has("city_crest") and (has("acid") or has("superdash") or (has("claw") and (has("dash") or has("wings"))))
    end
  },
  ["Bottom_Left_Fungal_Wastes"] = {
    ["Upper_Deepnest"] = function()
      return true
    end
  },
  ["Fungal_Core"] = {
    ["Fungal_Wastes"] = function()
      return has("claw") or has("wings")
    end,
    ["Far_Right_Deepnest"] = function()
      return true
    end
  },
  ["Mantis_Outskirts"] = {
    ["Fungal_Wastes"] = function()
      return true
    end,
    ["Mantis_Village"] = function()
      return has("dash") or has("claw") or has("wings") or has("superdash") or has("acid")
    end
  },
  ["Mantis_Village"] = {
    ["Fungal_Wastes"] = function()
      return has("claw") or has("wings") or has("mild_skips")
    end,
    ["Mantis_Outskirts"] = function()
      return has("claw") or has("wings") or has("acid") or (has("dash") and has("mild_skips"))
    end,
    ["Far_Right_Deepnest"] = function()
      return has("claw") or has("wings")
    end
  },
  ["Left_City"] = {
    ["Fungal_Wastes"] = function()
      return has("claw") and has("quake")
    end,
    ["Left_Elevator"] = function()
      return (has("claw") and (has("dash") or has("superdash") or has("wings") or has("mild_skips"))) or (has("wings") and has("shade_skips"))
    end,
    ["Soul_Sanctum"] = function()
      return (has("claw") and (has("dash") or has("superdash") or has("wings") or has("mild_skips"))) or (has("wings") and has("mild_skips"))
    end,
    ["Right_City"] = function()
      return has("claw") and has("wings")
    end,
    ["Upper_Left_Waterways"] = function()
      return has("simple_key")
    end
  },
  ["Left_Elevator"] = {
    ["Crossroads"] = function()
      return true
    end,
    ["Can_Stag"] = function()
      return true
    end,
    ["Fungal_Wastes"] = function()
      return has("claw") and has("quake")
    end,
    ["Left_City"] = function()
      return true
    end
  },
  ["Soul_Sanctum"] = {
    ["Left_City"] = function()
      return true
    end,
    ["Left_Elevator"] = function()
      return true
    end
  },
  ["Right_City"] = {
    ["Left_City"] = function()
      return true
    end,
    ["Lower_King's_Station"] = function()
      return true
    end,
    ["Upper_King's_Station"] = function()
      return has("claw") or has("wings") or (has("mild_skips") and has("dash")) or has("spicy_skips")
    end,
    ["Pleasure_House"] = function()
      return (has("claw") or has("wings") or has("dash")) and has("simple_key", 4) --TODO Right_City + (Upper_King's_Station | CLAW | WINGS | DASH) + SIMPLE4
    end,
    ["Waterways_Shaft"] = function()
      return true
    end,
    ["Central_Kingdom's_Edge"] = function()
      return true
    end
  },
  ["Lower_King's_Station"] = {
    ["Right_City"] = function()
      return true
    end,
    ["Upper_King's_Station"] = function()
      return has("claw") or has("wings")
    end
  },
  ["Upper_King's_Station"] = {
    ["Can_Stag"] = function()
      return true
    end,
    ["Lower_King's_Station"] = function()
      return true
    end,
    ["Right_Elevator"] = function()
      return true
    end
  },
  ["Right_Elevator"] = {
    ["Upper_King's_Station"] = function()
      return true
    end,
    ["Lower_Resting_Grounds"] = function()
      return true
    end
  },
  ["Pleasure_House"] = {
    ["Right_City"] = function()
      return true
    end
  },
  ["Tower_of_Love"] = {
    ["Upper_Kingdom's_Edge"] = function()
      return true
    end
  },
  ["Upper_Left_Waterways"] = {
    ["Central_Left_Waterways"] = function()
      return true
    end,
    ["Far_Left_Waterways"] = function()
      return has("claw") or has("wings")
    end
  },
  ["Central_Left_Waterways"] = {
    ["Right_City"] = function()
      return (has("spicy_skips") and has("wings") and boss() > 0) or (has("superdash") and has("mild_skips") and has("wings"))
    end,
    ["Upper_Left_Waterways"] = function()
      return has("claw") or (has("wings") and has("mild_skips"))
    end,
    ["Lower_Left_Waterways"] = function()
      return has("quake")
    end,
    ["Waterways_Shaft"] = function()
      return has("claw") or (has("wings") and has("spicy_skips")) or has("superdash") or (has("acid") and tunnel() > 0)
    end,
    ["Right_Waterways"] = function()
      return has("superdash") and (has("claw") or (has("wings") and has("acid")))
    end
  },
  ["Far_Left_Waterways"] = {
    ["Upper_Left_Waterways"] = function()
      return has("claw") or has("wings")
    end
  },
  ["Lower_Left_Waterways"] = {
    ["Central_Left_Waterways"] = function()
      return has("claw") or has("wings")
    end,
    ["Junk_Pit"] = function()
      return has("claw") or has("wings")
    end
  },
  ["Waterways_Shaft"] = {
    ["Right_City"] = function()
      return has("claw") and (has("dash") or has("wings") or has("superdash") or has("mild_skips"))
    end,
    ["Central_Left_Waterways"] = function()
      return tunnel() > 0 and (has("superdash") or has("acid")) and (has("claw") or has("wings") or has("spicy_skips"))
    end,
    ["Right_Waterways"] = function()
      return tunnel() > 0 and ((has("claw") and has("superdash")) or (has("claw") and has("wings") and has("dash")) or ((has("claw") or has("wings")) and has("acid")))
    end,
    ["Upper_Basin"] = function()
      return true
    end
  },
  ["Right_Waterways"] = {
    ["Central_Left_Waterways"] = function()
      return has("claw") and has("superdash")
    end,
    ["Waterways_Shaft"] = function()
      return has("claw") and (has("superdash") or (has("acid") and has("wings") and tunnel() > 0))
    end,
    ["Isma's_Grove"] = function()
      return (has("acid") and (has("claw") or has("wings") or has("mild_skips"))) or skipacid() > 0 --TODO (CLAW + Central_Left_Waterways + BOSS)
    end,
    ["Emilitia"] = function()
      return has("claw")
    end
  },
  ["Junk_Pit"] = {
    ["Lower_Left_Waterways"] = function()
      return has("claw")
    end
  },
  ["Isma's_Grove"] = {
    ["Right_Waterways"] = function()
      return has("acid") or skipacid() > 0
    end
  },
  ["Emilitia"] = {
    ["Right_City"] = function()
      return true
    end,
    ["Right_Waterways"] = function()
      return true
    end
  },
  ["Upper_Deepnest"] = {
    ["Bottom_Left_Fungal_Wastes"] = function()
      return has("claw") or has("wings")
    end,
    ["Deepnest"] = function()
      return has("claw") or has("wings")
    end
  },
  ["Far_Right_Deepnest"] = {
    ["Upper_Deepnest"] = function()
      return has("claw")
    end
  },
  ["Deepnest"] = {
    ["Failed_Tramway"] = function()
      return has("claw") or has("wings")
    end,
    ["Dark_Deepnest"] = function()
      return (has("lantern") or has("dark_rooms")) and (has("claw") or has("wings"))
    end,
    ["Lower_Tram"] = function()
      return has("tram")
    end
  },
  ["Failed_Tramway"] = {
    ["Upper_Deepnest"] = function()
      return true
    end,
    ["Deepnest"] = function()
      return true
    end
  },
  ["Dark_Deepnest"] = {
    ["Deepnest"] = function()
      return (has("claw") or has("wings") or has("dash")) and (has("lantern") or has("dark_rooms"))
    end,
    ["Failed_Tramway"] = function()
      return has("claw")
    end,
    ["Weaver's_Den"] = function()
      return (has("dash") or has("wings") or has("superdash") or airstall() > 0) and (has("claw") or (has("wings") and has("mild_skips")))
    end,
    ["Distant_Village"] = function()
      return has("claw") or (has("wings") and has("mild_skips"))
    end,
    ["Beast's_Den"] = function()
      return has("claw") or (has("wings") and has("mild_skips"))
    end,
    ["Bottom_Left_Queen's_Gardens"] = function()
      return has("claw") and (has("wings") or (has("dash") and has("mild_skips"))) and (has("lantern") or (has("dark_rooms") and has("spicy_skips")))
    end
  },
  ["Weaver's_Den"] = {
    ["Dark_Deepnest"] = function()
      return (has("lantern") or has("dark_rooms")) and true
    end
  },
  ["Distant_Village"] = {
    ["Can_Stag"] = function()
      return has("claw") or has("wings") --TODO (Distant_Village + (CLAW | WINGS | (Beast's_Den + DASH)))
    end,
    ["Dark_Deepnest"] = function()
      return (has("lantern") or has("dark_rooms")) and has("claw")
    end,
    ["Beast's_Den"] = function()
      return has("claw") or has("wings")
    end
  },
  ["Beast's_Den"] = {
    ["Distant_Village"] = function()
      return true
    end
  },
  ["Lower_Tram"] = {
    ["Deepnest"] = function()
      return true
    end,
    ["Mid_Basin"] = function()
      return true
    end,
    ["Lower_Kingdom's_Edge"] = function()
      return true
    end
  },
  ["Upper_Basin"] = {
    ["Waterways_Shaft"] = function()
      return has("claw") or has("wings")
    end,
    ["Mid_Basin"] = function()
      return true
    end
  },
  ["Mid_Basin"] = {
    ["Lower_Tram"] = function()
      return has("tram")
    end,
    ["Upper_Basin"] = function()
      return has("claw") or has("wings")
    end,
    ["Lower_Basin"] = function()
      return true
    end
  },
  ["Lower_Basin"] = {
    ["Mid_Basin"] = function()
      return has("claw") or has("wings")
    end,
    ["Far_Left_Basin"] = function()
      return has("wings") or has("superdash")
    end,
    ["Palace_Grounds"] = function()
      return has("claw") and has("wings")
    end,
    ["Abyss"] = function()
      return has("kings_brand")
    end
  },
  ["Far_Left_Basin"] = {
    ["Lower_Basin"] = function()
      return has("claw") or has("wings") or has("superdash")
    end
  },
  ["Palace_Grounds"] = {
    ["Can_Stag"] = function()
      return true
    end,
    ["Lower_Basin"] = function()
      return true
    end
  },
  ["Abyss"] = {
    ["Lower_Basin"] = function()
      return (has("claw") and has("dash")) or has("wings")
    end
  },
  ["Lower_Kingdom's_Edge"] = {
    ["Right_Waterways"] = function()
      return has("claw") and (has("superdash") or has("acid"))
    end,
    ["Lower_Tram"] = function()
      return has("tram")
    end,
    ["Central_Kingdom's_Edge"] = function()
      return has("claw") or has("wings")
    end,
    ["Hive"] = function()
      return has("claw") or has("wings")
    end
  },
  ["Central_Kingdom's_Edge"] = {
    ["Center_Right_Kingdom's_Edge"] = function()
      return has("claw") or (has("wings") and has("mild_skips")) or (has("acid") and (has("dash") or has("wings")))
    end,
    ["Oro_Bench"] = function()
      return has("claw") or (has("wings") and has("mild_skips")) or (has("acid") and (has("dash") or has("wings")) and has("spicy_skips"))
    end
  },
  ["Upper_Kingdom's_Edge"] = {
    ["Tower_of_Love"] = function()
      return true
    end,
    ["Central_Kingdom's_Edge"] = function()
      return true
    end,
    ["Center_Right_Kingdom's_Edge"] = function()
      return true
    end,
    ["Cast_Off_Shell"] = function()
      return has("wings") or (has("spicy_skips") and has("claw"))
    end,
    ["Top_Kingdom's_Edge"] = function()
      return has("claw") or has("wings")
    end
  },
  ["Center_Right_Kingdom's_Edge"] = {
    ["Central_Kingdom's_Edge"] = function()
      return true
    end,
    ["Upper_Kingdom's_Edge"] = function()
      return true
    end,
    ["Oro_Bench"] = function()
      return has("spicy_skips")
    end
  },
  ["Oro_Bench"] = {

  },
  ["Cast_Off_Shell"] = {
    ["Center_Right_Kingdom's_Edge"] = function()
      return true
    end
  },
  ["Top_Kingdom's_Edge"] = {
    ["Upper_King's_Station"] = function()
      return true
    end,
    ["Upper_Kingdom's_Edge"] = function()
      return true
    end,
    ["Colosseum"] = function()
      return true
    end
  },
  ["Hive"] = {
    ["Lower_Kingdom's_Edge"] = function()
      return has("claw") or has("wings")
    end
  },
  ["Colosseum"] = {
    ["Top_Kingdom's_Edge"] = function()
      return true
    end,
    ["Pale_Lurker_Area"] = function()
      return has("claw")
    end
  },
  ["Pale_Lurker_Area"] = {
    ["Colosseum"] = function()
      return true
    end
  },
  ["Crystal_Peak"] = {
    ["Crossroads"] = function()
      return has("lantern")
    end,
    ["Upper_Crystal_Peak"] = function()
      return has("claw") or (has("spike_tunnels") and has("wings") and (has("dash") or airstall() > 0))
    end,
    ["Crystallized_Mound"] = function()
      return (has("lantern") or has("dark_rooms")) and ((has("wings") and has("dash")) or has("superdash") or (airstall() > 0 and (has("wings") or has("dash"))))
    end,
    ["Upper_Resting_Grounds"] = function()
      return has("lantern") or has("dark_rooms")
    end
  },
  ["Upper_Crystal_Peak"] = {
    ["Dirtmouth"] = function()
      return has("claw") and has("superdash")
    end,
    ["Crystal_Peak"] = function()
      return true
    end,
    ["Hallownest's_Crown"] = function()
      return has("claw") and (has("dash") or has("wings") or has("superdash")) and (has("wings") or has("mild_skips"))
    end
  },
  ["Hallownest's_Crown"] = {
    ["Upper_Crystal_Peak"] = function()
      return true
    end
  },
  ["Crystallized_Mound"] = {
    ["Crystal_Peak"] = function()
      return (has("superdash") or (has("wings") and has("dash"))) and (has("lantern") or has("dark_rooms"))
    end,
    ["Upper_Resting_Grounds"] = function()
      return true
    end
  },
  ["Upper_Tram"] = {
    ["Crossroads"] = function()
      return true
    end,
    ["Upper_Resting_Grounds"] = function()
      return true
    end
  },
  ["Upper_Resting_Grounds"] = {
    ["Can_Stag"] = function()
      return true
    end,
    ["Upper_Tram"] = function()
      return has("tram")
    end,
    ["Spirits_Glade"] = function()
      return true --TODO 200 essence requirement
    end,
    ["Lower_Resting_Grounds"] = function()
      return has("quake")
    end
  },
  ["Spirits_Glade"] = {
    ["Upper_Resting_Grounds"] = function()
      return true
    end
  },
  ["Lower_Resting_Grounds"] = {
    ["Right_Elevator"] = function()
      return true
    end,
    ["Upper_Resting_Grounds"] = function()
      return has("dash") or has("claw") or has("wings") or has("mild_skips")
    end,
    ["Blue_Lake"] = function()
      return has("claw") or has("wings")
    end
  },
  ["Blue_Lake"] = {
    ["Crossroads"] = function()
      return has("claw") or has("wings")
    end,
    ["Lower_Resting_Grounds"] = function()
      return true
    end
  },
  ["Top_Right_Queen's_Gardens"] = {
    ["Left_Fog_Canyon"] = function()
      return has("claw") or has("wings") or has("acid") or skipacid() > 0
    end,
    ["Bottom_Right_Queen's_Gardens"] = function()
      return has("dash") or ((has("claw") or has("wings")) and has("superdash"))
    end
  },
  ["Bottom_Right_Queen's_Gardens"] = {
    ["Bottom_Left_Fungal_Wastes"] = function()
      return true
    end,
    ["Bottom_Left_Queen's_Gardens"] = function()
      return true
    end
  },
  ["Bottom_Left_Queen's_Gardens"] = {
    ["Dark_Deepnest"] = function()
      return (has("lantern") or has("dark_rooms")) and (has("claw") or has("wings"))
    end,
    ["Bottom_Right_Queen's_Gardens"] = function()
      return has("claw")
    end,
    ["Top_Left_Queen's_Gardens"] = function()
      return has("spell") and (has("claw") or (has("wings") and has("mild_skips"))) and (has("dash") or has("wings"))
    end
  },
  ["Top_Left_Queen's_Gardens"] = {
    ["Can_Stag"] = function()
      return true
    end,
    ["Top_Right_Queen's_Gardens"] = function()
      return has("superdash") or has("dash") or has("wings")
    end,
    ["Bottom_Left_Queen's_Gardens"] = function()
      return has("dash") or has("wings")
    end,
    ["Far_Queen's_Gardens"] = function()
      return (has("claw") or has("wings")) and has("dash")
    end
  },
  ["Far_Queen's_Gardens"] = {
    ["Top_Left_Queen's_Gardens"] = function()
      return has("dash")
    end
  },
  ["Howling_Cliffs"] = {
    ["King's_Pass"] = function()
      return true
    end,
    ["Dirtmouth"] = function()
      return has("superdash") or (has("wings") and has("dash"))
    end,
    ["Greenpath"] = function()
      return true
    end,
    ["Stag_Nest"] = function()
      return has("wings") and has("mild_skips")
    end
  },
  ["Stag_Nest"] = {
    ["Howling_Cliffs"] = function()
      return true
    end
  },
}

function build_areas()
  --find current start location based on setting
  local current_start = nil
  for location,setting in pairs(start_locations) do
    if has(setting) then
      current_start = location
      break
    end
  end

  --if new start location, everything back to false except start spot
  if not start_location or start_location ~= current_start then
    for location,_ in pairs(areas) do
      areas[location] = false
    end
    areas[current_start] = true
  end
  
  --make a copy of the area table that we can manipulate
  local new_areas = {}
  for location,_ in pairs(areas) do
    new_areas[location] = areas[location]
  end
  
  local rounds = 0
  local last_count = 0
  while true do
    local current_count = 0

    for location,_ in pairs(areas) do
      --if an area is reachable, remember it in the new table
      if areas[location] then
        new_areas[location] = true
        current_count = current_count + 1

        --if the area connects to an area that we can't reach, call the access function and see if the last update changed that
        for target,func in pairs(area_connections[location]) do
          if not areas[target] then
            new_areas[target] = func()
          end
        end
      end
    end

    --copy the table over for the next round of iteration
    areas = new_areas

    --if no new areas were made reachable in the last round, we can stop trying to find new ones
    if current_count == last_count then
      break
    else
      last_count = current_count
    end

    --safety in case I goofed
    rounds = rounds + 1
    if rounds > 30 then
      print("-------------monkaS-------------")
      break
    end
  end
end

function access(area)
  if areas[area] then
    return 1
  end
  return 0
end
