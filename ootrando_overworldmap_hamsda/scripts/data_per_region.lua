data_per_region = {
  ["Root"] = {
    ["scene"] = "Root",
    ["pool"] = ER_POOL_TYPES.ROOT,
    ["exits"] = {
      ["Root Exits"] = {
        ["child_access"] = function()
          if has("setting_age_child") then
            return AccessibilityLevel.Normal
          end
          return can_time_travel()
        end,
        ["adult_access"] = function()
          if has("setting_age_adult") then
            return AccessibilityLevel.Normal
          end
          return can_time_travel()
        end
      }
    }
  },
  ["Root Exits"] = {
    ["scene"] = "Root",
    ["pool"] = ER_POOL_TYPES.ROOT,
    ["exits"] = {
      ["Child Spawn"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["Adult Spawn"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      --non starting age has guaranteed access to ToT
      --this makes it so you don't have to SW to begin exploring
      ["Temple of Time"] = {
        ["fixed"] = true,
        ["child_access"] = function()
          if has("setting_age_adult") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("setting_age_child") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["Prelude of Light Warp"] = {
        ["child_access"] = function()
          if has("ocarina") and has("prelude") then
            return can_leave_forest()
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("ocarina") and has("prelude") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["Minuet of Forest Warp"] = {
        ["child_access"] = function()
          if has("ocarina") and has("minuet") then
            return can_leave_forest()
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("ocarina") and has("minuet") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["Bolero of Fire Warp"] = {
        ["child_access"] = function()
          if has("ocarina") and has("bolero") then
            return can_leave_forest()
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("ocarina") and has("bolero") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["Serenade of Water Warp"] = {
        ["child_access"] = function()
          if has("ocarina") and has("serenade") then
            return can_leave_forest()
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("ocarina") and has("serenade") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["Nocturne of Shadow Warp"] = {
        ["child_access"] = function()
          if has("ocarina") and has("nocturne") then
            return can_leave_forest()
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("ocarina") and has("nocturne") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["Requiem of Spirit Warp"] = {
        ["child_access"] = function()
          if has("ocarina") and has("requiem") then
            return can_leave_forest()
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("ocarina") and has("requiem") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Child Spawn"] = {
    ["scene"] = "Root",
    ["pool"] = ER_POOL_TYPES.ROOT,
    ["exits"] = {
      ["KF Links House"] = {
        ["setting"] = "setting_entrance_spawn_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Adult Spawn"] = {
    ["scene"] = "Root",
    ["pool"] = ER_POOL_TYPES.ROOT,
    ["exits"] = {
      ["Temple of Time"] = {
        ["setting"] = "setting_entrance_spawn_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Prelude of Light Warp"] = {
    ["scene"] = "Root",
    ["pool"] = ER_POOL_TYPES.ROOT,
    ["exits"] = {
      ["Temple of Time"] = {
        ["setting"] = "setting_entrance_warpsong_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Minuet of Forest Warp"] = {
    ["scene"] = "Root",
    ["pool"] = ER_POOL_TYPES.ROOT,
    ["exits"] = {
      ["Sacred Forest Meadow"] = {
        ["setting"] = "setting_entrance_warpsong_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Bolero of Fire Warp"] = {
    ["scene"] = "Root",
    ["pool"] = ER_POOL_TYPES.ROOT,
    ["exits"] = {
      ["DMC Central Local"] = {
        ["setting"] = "setting_entrance_warpsong_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Serenade of Water Warp"] = {
    ["scene"] = "Root",
    ["pool"] = ER_POOL_TYPES.ROOT,
    ["exits"] = {
      ["Lake Hylia"] = {
        ["setting"] = "setting_entrance_warpsong_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Nocturne of Shadow Warp"] = {
    ["scene"] = "Root",
    ["pool"] = ER_POOL_TYPES.ROOT,
    ["exits"] = {
      ["Graveyard Warp Pad Region"] = {
        ["setting"] = "setting_entrance_warpsong_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Requiem of Spirit Warp"] = {
    ["scene"] = "Root",
    ["pool"] = ER_POOL_TYPES.ROOT,
    ["exits"] = {
      ["Desert Colossus"] = {
        ["setting"] = "setting_entrance_warpsong_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Kokiri Forest"] = {
    ["scene"] = "Kokiri Forest",
    ["pool"] = ER_POOL_TYPES.OW,
    ["locations"] = {
      ["KF Kokiri Sword Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["KF GS Know It All House"] = {
        ["child_access"] = function()
          return can_child_attack()
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["KF GS Bean Patch"] = {
        ["child_access"] = function()
          return and_accessibility(has_bottle(), can_child_attack())
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["KF GS House of Twins"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          local hook = has("hookshot") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local hb = has("hoverboots") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local trick = has("logic_adult_kokiri_gs") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
          local bow = has("bow") and AccessibilityLevel.Inspect or AccessibilityLevel.None
          local df = (has("dinsfire") and has("magic")) and AccessibilityLevel.Inspect or AccessibilityLevel.None

          return and_accessibility(night_gs(), or_accessibility(hook, and_accessibility(trick, hb), bow, df))
        end
      }
    },
    ["exits"] = {
      ["KF Links House"] = {
        ["setting"] = "setting_entrance_interiors_all",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["KF Midos House"] = {
        ["setting"] = "setting_entrance_interiors_simple",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["KF Sarias House"] = {
        ["setting"] = "setting_entrance_interiors_simple",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["KF House of Twins"] = {
        ["setting"] = "setting_entrance_interiors_simple",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["KF Know It All House"] = {
        ["setting"] = "setting_entrance_interiors_simple",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["KF Kokiri Shop"] = {
        ["setting"] = "setting_entrance_interiors_simple",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["KF Outside Deku Tree"] = {
        ["child_access"] = function()
          if has("setting_forest_open") or (has("sword1") and has("shield1")) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Lost Woods"] = {
        ["setting"] = "setting_entrance_overworld_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["LW Bridge From Forest"] = {
        ["setting"] = "setting_entrance_overworld_shuffle",
        ["child_access"] = function()
          return can_leave_forest()
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["KF Storms Grotto"] = {
        ["setting"] = "setting_entrance_grottos_shuffle",
        ["child_access"] = function()
          return can_open_storm_grotto()
        end,
        ["adult_access"] = function()
          return can_open_storm_grotto()
        end
      }
    }
  },
  ["KF Outside Deku Tree"] = {
    ["scene"] = "Kokiri Forest",
    ["pool"] = ER_POOL_TYPES.OW,
    ["exits"] = {
      ["Deku Tree Split"] = {
        ["setting"] = "setting_entrance_dungeons_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          if has("setting_entrance_dungeons_shuffle") then
            if has("setting_forest_open") then
              return AccessibilityLevel.Normal
            elseif has("sword1") and has("shield1") then
              return access_region("Kokiri Forest", "child")
            end
          end
          return AccessibilityLevel.None
        end
      },
      ["Kokiri Forest"] = {
        ["child_access"] = function()
          if has("setting_forest_open") or (has("sword1") and has("shield1")) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["KF Links House"] = {
    ["scene"] = "KF Links House",
    ["pool"] = ER_POOL_TYPES.INTERIOR,
    ["locations"] = {
      ["KF Links House Cow"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("ocarina") and has("epona") then
            return access_region("Lon Lon Ranch", "adult")
          end
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["Kokiri Forest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["KF Midos House"] = {
    ["scene"] = "KF Midos House",
    ["pool"] = ER_POOL_TYPES.INTERIOR,
    ["locations"] = {
      ["KF Midos Chests"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["Kokiri Forest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["KF Sarias House"] = {
    ["scene"] = "KF Sarias House",
    ["pool"] = ER_POOL_TYPES.INTERIOR,
    ["exits"] = {
      ["Kokiri Forest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["KF House of Twins"] = {
    ["scene"] = "KF House of Twins",
    ["pool"] = ER_POOL_TYPES.INTERIOR,
    ["exits"] = {
      ["Kokiri Forest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["KF Know It All House"] = {
    ["scene"] = "KF Know it All House",
    ["pool"] = ER_POOL_TYPES.INTERIOR,
    ["exits"] = {
      ["Kokiri Forest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["KF Kokiri Shop"] = {
    ["scene"] = "KF Kokiri Shop",
    ["pool"] = ER_POOL_TYPES.INTERIOR,
    ["locations"] = {
      ["KF Shop Items"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["Kokiri Forest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["LW Forest Exit"] = {
    ["scene"] = "Lost Woods",
    ["pool"] = ER_POOL_TYPES.OW,
    ["exits"] = {
      ["Kokiri Forest"] = {
        ["setting"] = "setting_entrance_overworld_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Lost Woods"] = {
    ["scene"] = "Lost Woods",
    ["pool"] = ER_POOL_TYPES.OW,
    ["locations"] = {
      ["LW Skull Kid"] = {
        ["child_access"] = function()
          if has("ocarina") and has("saria") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["LW Ocarina Memory Game"] = {
        ["child_access"] = function()
          if has("ocarina") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["LW Target in Woods"] = {
        ["child_access"] = function()
          if has("sling") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["LW Deku Scrub Near Bridge"] = {
        ["child_access"] = function()
          if has("nuts") or has("shield1") then
            return AccessibilityLevel.Normal
          end
          return can_child_attack()
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["LW GS Bean Patch Near Bridge"] = {
        ["child_access"] = function()
          return and_accessibility(has_bottle(), can_child_attack())
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["LW Forest Exit"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["GC Woods Warp"] = {
        ["setting"] = "setting_entrance_overworld_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["LW Bridge"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if
            has("hoverboots") or has("longshot") or has("logic_lost_woods_bridge") or
              (has("beans") and access_region("Lost Woods", "child") == AccessibilityLevel.Normal)
           then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.SequenceBreak
        end
      },
      ["Zora River"] = {
        ["setting"] = "setting_entrance_overworld_shuffle",
        ["child_access"] = function()
          if has("scale") then
            return can_leave_forest()
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("scale") or has("ironboots") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["LW Beyond Mido"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          if has("logic_mido_backflip") or (has("ocarina") and has("saria")) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.SequenceBreak
        end
      },
      ["LW Near Shortcuts Grotto"] = {
        ["setting"] = "setting_entrance_grottos_shuffle",
        ["child_access"] = function()
          local hammer = has("hammer") and AccessibilityLevel.Normal or AccessibilityLevel.None

          return or_accessibility(has_explosives(), and_accessibility(hammer, access_region("Lost Woods", "adult")))
        end,
        ["adult_access"] = function()
          return can_blast()
        end
      }
    }
  },
  ["LW Beyond Mido"] = {
    ["scene"] = "Lost Woods",
    ["pool"] = ER_POOL_TYPES.OW,
    ["locations"] = {
      ["LW Deku Scrub Near Deku Theater Right"] = {
        ["child_access"] = function()
          if has("nuts") or has("shield1") then
            return AccessibilityLevel.Normal
          end
          return can_child_attack()
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["LW Deku Scrub Near Deku Theater Left"] = {
        ["child_access"] = function()
          if has("nuts") or has("shield1") then
            return AccessibilityLevel.Normal
          end
          return can_child_attack()
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["LW GS Above Theater"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          local bean = AccessibilityLevel.None
          if has("beans") then
            bean = access_region("LW Beyond Mido", "child")
          end
          local trick =
            has("logic_lost_woods_gs_bean") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
          local collect = has("hookshot") and AccessibilityLevel.Normal or AccessibilityLevel.Inspect
          local kill = has_bombchus()
          if has("longshot") or has("bow") or (has("dinsfire") and has("magic")) then
            kill = AccessibilityLevel.Normal
          end

          return and_accessibility(night_gs(), or_accessibility(bean, and_accessibility(trick, collect, kill)))
        end
      },
      ["LW GS Bean Patch Near Theater"] = {
        ["child_access"] = function()
          local shield = AccessibilityLevel.None
          if has("shield1") and has("setting_scrub_shuffle_no") then
            shield = AccessibilityLevel.Normal
          end
          return and_accessibility(has_bottle(), or_accessibility(can_child_attack(), shield))
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["LW Forest Exit"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Lost Woods"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          if has("ocarina") and has("saria") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["SFM Entryway"] = {
        ["setting"] = "setting_entrance_overworld_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Deku Theater"] = {
        ["setting"] = "setting_entrance_grottos_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["LW Scrubs Grotto"] = {
        ["setting"] = "setting_entrance_grottos_shuffle",
        ["child_access"] = function()
          local hammer = has("hammer") and AccessibilityLevel.Normal or AccessibilityLevel.None

          return or_accessibility(has_explosives(), and_accessibility(hammer, access_region("LW Beyond Mido", "adult")))
        end,
        ["adult_access"] = function()
          return can_blast()
        end
      }
    }
  },
  ["Lost Woods Mushroom Timeout"] = {
    ["scene"] = "Lost Woods",
    ["pool"] = ER_POOL_TYPES.OW,
    ["exits"] = {
      ["Lost Woods"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["SFM Entryway"] = {
    ["scene"] = "Sacred Forest Meadow",
    ["pool"] = ER_POOL_TYPES.OW,
    ["exits"] = {
      ["LW Beyond Mido"] = {
        ["setting"] = "setting_entrance_overworld_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Sacred Forest Meadow"] = {
        ["child_access"] = function()
          if has("sling") or has("sticks") or has("sword1") or (has("dinsfire") and has("magic")) then
            return AccessibilityLevel.Normal
          end
          return has_explosives()
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["SFM Wolfos Grotto"] = {
        ["setting"] = "setting_entrance_grottos_shuffle",
        ["child_access"] = function()
          return and_accessibility(hidden_grotto(), has_explosives())
        end,
        ["adult_access"] = function()
          return and_accessibility(hidden_grotto(), can_blast())
        end
      }
    }
  },
  ["Sacred Forest Meadow"] = {
    ["scene"] = "Sacred Forest Meadow",
    ["pool"] = ER_POOL_TYPES.OW,
    ["locations"] = {
      ["Song from Saria"] = {
        ["child_access"] = function()
          if has("postzelda") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["Sheik in Forest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["SFM GS"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          local collect = has("hookshot") and AccessibilityLevel.Normal or AccessibilityLevel.Inspect
          local kill = has_explosives()
          if has("hookshot") or has("bow") or (has("dinsfire") and has("magic")) then
            kill = AccessibilityLevel.Normal
          end

          return and_accessibility(night_gs(), collect, kill)
        end
      }
    },
    ["exits"] = {
      ["SFM Entryway"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["SFM Forest Temple Entrance Ledge"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("hookshot") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["SFM Fairy Grotto"] = {
        ["setting"] = "setting_entrance_grottos_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["SFM Storms Grotto"] = {
        ["setting"] = "setting_entrance_grottos_shuffle",
        ["child_access"] = function()
          return can_open_storm_grotto()
        end,
        ["adult_access"] = function()
          return can_open_storm_grotto()
        end
      }
    }
  },
  ["SFM Forest Temple Entrance Ledge"] = {
    ["scene"] = "Sacred Forest Meadow",
    ["pool"] = ER_POOL_TYPES.OW,
    ["exits"] = {
      ["Sacred Forest Meadow"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Forest Temple Split"] = {
        ["setting"] = "setting_entrance_dungeons_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["LW Bridge From Forest"] = {
    ["scene"] = "Lost Woods",
    ["pool"] = ER_POOL_TYPES.OW,
    ["locations"] = {
      ["LW Gift from Saria"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["LW Bridge"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["LW Bridge"] = {
    ["scene"] = "Lost Woods",
    ["pool"] = ER_POOL_TYPES.OW,
    ["exits"] = {
      ["Kokiri Forest"] = {
        ["setting"] = "setting_entrance_overworld_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Hyrule Field"] = {
        ["setting"] = "setting_entrance_overworld_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Lost Woods"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("longshot") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Hyrule Field"] = {
    ["scene"] = "Hyrule Field",
    ["pool"] = ER_POOL_TYPES.OW,
    ["locations"] = {
      ["HF Ocarina of Time Item"] = {
        ["child_access"] = function()
          if has("stones", 3) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["Song from Ocarina of Time"] = {
        ["child_access"] = function()
          if has("stones", 3) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["LW Bridge"] = {
        ["setting"] = "setting_entrance_overworld_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Lake Hylia"] = {
        ["setting"] = "setting_entrance_overworld_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Gerudo Valley"] = {
        ["setting"] = "setting_entrance_overworld_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Market Entrance"] = {
        ["setting"] = "setting_entrance_overworld_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Kakariko Village"] = {
        ["setting"] = "setting_entrance_overworld_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["ZR Front"] = {
        ["setting"] = "setting_entrance_overworld_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Lon Lon Ranch"] = {
        ["setting"] = "setting_entrance_overworld_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["HF Southeast Grotto"] = {
        ["setting"] = "setting_entrance_grottos_shuffle",
        ["child_access"] = function()
          return has_explosives()
        end,
        ["adult_access"] = function()
          return can_blast()
        end
      },
      ["HF Open Grotto"] = {
        ["setting"] = "setting_entrance_grottos_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["HF Inside Fence Grotto"] = {
        ["setting"] = "setting_entrance_grottos_shuffle",
        ["child_access"] = function()
          return and_accessibility(hidden_grotto(), has_explosives())
        end,
        ["adult_access"] = function()
          return and_accessibility(hidden_grotto(), can_blast())
        end
      },
      ["HF Cow Grotto"] = {
        ["setting"] = "setting_entrance_grottos_shuffle",
        ["child_access"] = function()
          return and_accessibility(hidden_grotto(), has_explosives())
        end,
        ["adult_access"] = function()
          if has("hammer") then
            return hidden_grotto()
          end
          return AccessibilityLevel.None
        end
      },
      ["HF Near Market Grotto"] = {
        ["setting"] = "setting_entrance_grottos_shuffle",
        ["child_access"] = function()
          return has_explosives()
        end,
        ["adult_access"] = function()
          return can_blast()
        end
      },
      ["HF Fairy Grotto"] = {
        ["setting"] = "setting_entrance_grottos_shuffle",
        ["child_access"] = function()
          return has_explosives()
        end,
        ["adult_access"] = function()
          return can_blast()
        end
      },
      ["HF Near Kak Grotto"] = {
        ["setting"] = "setting_entrance_grottos_shuffle",
        ["child_access"] = function()
          return and_accessibility(hidden_grotto(), has_explosives())
        end,
        ["adult_access"] = function()
          return and_accessibility(hidden_grotto(), can_blast())
        end
      },
      ["HF Tektite Grotto"] = {
        ["setting"] = "setting_entrance_grottos_shuffle",
        ["child_access"] = function()
          return and_accessibility(hidden_grotto(), has_explosives())
        end,
        ["adult_access"] = function()
          return and_accessibility(hidden_grotto(), can_blast())
        end
      }
    }
  },
  ["Lake Hylia"] = {
    ["scene"] = "Lake Hylia",
    ["pool"] = ER_POOL_TYPES.OW,
    ["locations"] = {
      ["LH Underwater Item"] = {
        ["child_access"] = function()
          if has("scale") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.Inspect
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["LH Sun"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          local spawn = has("bow") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local reach =
            ((has("ocarina") and has("scarecrow") and has("longshot")) or has("water")) and AccessibilityLevel.Normal or
            AccessibilityLevel.Inspect

          return and_accessibility(spawn, reach)
        end
      },
      ["LH Freestanding PoH"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          local beans = has("beans") and AccessibilityLevel.Normal or AccessibilityLevel.None
          return or_accessibility(can_use_scarecrow(), and_accessibility(beans, access_region("Lake Hylia", "child")))
        end
      },
      ["LH GS Bean Patch"] = {
        ["child_access"] = function()
          return and_accessibility(has_bottle(), can_child_attack())
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["LH GS Lab Wall"] = {
        ["child_access"] = function()
          local rang = has("boomerang") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local trick = has("logic_lab_wall_gs") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
          local collect = (has("sticks") or has("sword1")) and AccessibilityLevel.Normal or AccessibilityLevel.Inspect
          local kill = has_explosives()
          if has("sticks") or has("sword1") or has("sling") or (has("dinsfire") and has("magic")) then
            kill = AccessibilityLevel.Normal
          end

          return and_accessibility(night_gs(), or_accessibility(rang, and_accessibility(trick, collect, kill)))
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["LH GS Small Island"] = {
        ["child_access"] = function()
          return and_accessibility(can_child_attack(), night_gs())
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["LH GS Tree"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("longshot") then
            return night_gs()
          elseif has("bow") then
            return AccessibilityLevel.Inspect
          end
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["Hyrule Field"] = {
        ["setting"] = "setting_entrance_overworld_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Zoras Domain"] = {
        ["setting"] = "setting_entrance_overworld_shuffle",
        ["child_access"] = function()
          if has("scale") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["LH Owl Flight"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["LH Lab"] = {
        ["setting"] = "setting_entrance_interiors_simple",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["LH Fishing Island"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          local water = has("water") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local beans = has("beans") and AccessibilityLevel.Normal or AccessibilityLevel.None
          return or_accessibility(
            water,
            can_use_scarecrow(),
            and_accessibility(beans, access_region("Lake Hylia", "child"))
          )
        end
      },
      ["Water Temple Split"] = {
        ["setting"] = "setting_entrance_dungeons_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("hookshot") then
            if has("ironboots") then
              return AccessibilityLevel.Normal
            elseif has("scale2") then
              if has("longshot") or has("logic_water_hookshot_entry") then
                return AccessibilityLevel.Normal
              else
                return AccessibilityLevel.SequenceBreak
              end
            end
          end
          return AccessibilityLevel.None
        end
      },
      ["LH Grotto"] = {
        ["setting"] = "setting_entrance_grottos_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["LH Fishing Island"] = {
    ["scene"] = "Lake Hylia",
    ["pool"] = ER_POOL_TYPES.OW,
    ["exits"] = {
      ["Lake Hylia"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["LH Fishing Hole"] = {
        ["setting"] = "setting_entrance_interiors_simple",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["LH Owl Flight"] = {
    ["scene"] = "Lake Hylia",
    ["pool"] = ER_POOL_TYPES.ROOT,
    ["exits"] = {
      ["Hyrule Field"] = {
        ["setting"] = "setting_entrance_owl_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["LH Lab"] = {
    ["scene"] = "LH Lab",
    ["pool"] = ER_POOL_TYPES.INTERIOR,
    ["locations"] = {
      ["LH Lab Dive"] = {
        ["child_access"] = function()
          if has("scale2") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("scale2") then
            return AccessibilityLevel.Normal
          elseif has("ironboots") and has("hookshot") then
            if has("logic_lab_diving") then
              return AccessibilityLevel.Normal
            end
            return AccessibilityLevel.SequenceBreak
          end
          return AccessibilityLevel.None
        end
      },
      ["LH GS Lab Crate"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("ironboots") and has("hookshot") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["Lake Hylia"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["LH Fishing Hole"] = {
    ["scene"] = "LH Fishing Hole",
    ["pool"] = ER_POOL_TYPES.INTERIOR,
    ["locations"] = {
      ["LH Child Fishing"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["LH Adult Fishing"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["LH Fishing Island"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Gerudo Valley"] = {
    ["scene"] = "Gerudo Valley",
    ["pool"] = ER_POOL_TYPES.OW,
    ["locations"] = {
      ["GV GS Small Bridge"] = {
        ["child_access"] = function()
          local collect = has("boomerang") and AccessibilityLevel.Normal or AccessibilityLevel.Inspect
          local kill = AccessibilityLevel.None
          if has("boomerang") or has("sling") or has("sticks") or has("bombs") or (has("dinsfire") and has("magic")) then
            kill = AccessibilityLevel.Normal
          end

          return and_accessibility(night_gs(), collect, kill)
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["Hyrule Field"] = {
        ["setting"] = "setting_entrance_overworld_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["GV Upper Stream"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["GV Crate Ledge"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          if has("longshot") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["GV Grotto Ledge"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["GV Fortress Side"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if (has("ocarina") and has("epona")) or has("longshot") or has("gerudo_fortress_open") then
            return AccessibilityLevel.Normal
          end
          return or_accessibility(can_finish_GerudoFortress("adult"), can_finish_GerudoFortress("child"))
        end
      }
    }
  },
  ["GV Upper Stream"] = {
    ["scene"] = "Gerudo Valley",
    ["pool"] = ER_POOL_TYPES.OW,
    ["locations"] = {
      ["GV Waterfall Freestanding PoH"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["GV GS Bean Patch"] = {
        ["child_access"] = function()
          return and_accessibility(has_bottle(), can_child_attack())
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["GV Cow"] = {
        ["child_access"] = function()
          if has("ocarina") and has("epona") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["GV Lower Stream"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["GV Lower Stream"] = {
    ["scene"] = "Gerudo Valley",
    ["pool"] = ER_POOL_TYPES.OW,
    ["exits"] = {
      ["Lake Hylia"] = {
        ["fixed"] = true,
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["GV Grotto Ledge"] = {
    ["scene"] = "Gerudo Valley",
    ["pool"] = ER_POOL_TYPES.OW,
    ["exits"] = {
      ["GV Lower Stream"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["GV Octorok Grotto"] = {
        ["setting"] = "setting_entrance_grottos_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("lift2") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["GV Crate Ledge"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("longshot") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["GV Crate Ledge"] = {
    ["scene"] = "Gerudo Valley",
    ["pool"] = ER_POOL_TYPES.OW,
    ["locations"] = {
      ["GV Crate Freestanding PoH"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["GV Lower Stream"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["GV Fortress Side"] = {
    ["scene"] = "Gerudo Valley",
    ["pool"] = ER_POOL_TYPES.OW,
    ["locations"] = {
      ["GV Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("hammer") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["GV GS Behind Tent"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          local collect = has("hookshot") and AccessibilityLevel.Normal or AccessibilityLevel.Inspect
          local kill = has_explosives()
          if has("hookshot") or has("bow") or (has("dinsfire") and has("magic")) then
            kill = AccessibilityLevel.Normal
          end

          return and_accessibility(night_gs(), collect, kill)
        end
      },
      ["GV GS Pillar"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          local collect = has("hookshot") and AccessibilityLevel.Normal or AccessibilityLevel.Inspect
          local kill = has_bombchus()
          if has("hookshot") or has("bow") then
            kill = AccessibilityLevel.Normal
          end

          return and_accessibility(night_gs(), collect, kill)
        end
      }
    },
    ["exits"] = {
      ["Gerudo Fortress"] = {
        ["setting"] = "setting_entrance_overworld_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["GV Upper Stream"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["GV Crate Ledge"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          local trick =
            has("logic_valley_crate_hovers") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
          local hb = has("hoverboots") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local ohko = damage_single_instance_ohko()

          return and_accessibility(trick, hb, ohko)
        end
      },
      ["Gerudo Valley"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          if (has("ocarina") and has("epona")) or has("longshot") or has("gerudo_fortress_open") then
            return AccessibilityLevel.Normal
          end
          return or_accessibility(can_finish_GerudoFortress("adult"), can_finish_GerudoFortress("child"))
        end
      },
      ["GV Carpenter Tent"] = {
        ["setting"] = "setting_entrance_interiors_simple",
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["GV Storms Grotto"] = {
        ["setting"] = "setting_entrance_grottos_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return can_open_storm_grotto()
        end
      }
    }
  },
  ["GV Carpenter Tent"] = {
    ["scene"] = "GV Carpenter Tent",
    ["pool"] = ER_POOL_TYPES.INTERIOR,
    ["exits"] = {
      ["GV Fortress Side"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Gerudo Fortress"] = {
    ["scene"] = "Gerudo Fortress",
    ["pool"] = ER_POOL_TYPES.OW,
    ["locations"] = {
      ["GF Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("hoverboots") or has("longshot") then
            return AccessibilityLevel.Normal
          end
          return can_use_scarecrow()
        end
      },
      ["GF HBA 1000 Points"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("card") and has("ocarina") and has("epona") and has("bow") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["GF HBA 1500 Points"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("card") and has("ocarina") and has("epona") and has("bow") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["Hideout Jail Guard (1 Torch)"] = {
        ["child_access"] = function()
          if has("sword1") then
            return AccessibilityLevel.Normal
          elseif has("sticks") then
            return AccessibilityLevel.SequenceBreak
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Hideout Jail Guard (2 Torches)"] = {
        ["child_access"] = function()
          if has("sword1") then
            return AccessibilityLevel.Normal
          elseif has("sticks") then
            return AccessibilityLevel.SequenceBreak
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Hideout Jail Guard (3 Torches)"] = {
        ["child_access"] = function()
          local weapon = AccessibilityLevel.None
          if has("sword1") then
            weapon = AccessibilityLevel.Normal
          elseif has("sticks") then
            weapon = AccessibilityLevel.SequenceBreak
          end
          local kitchen = AccessibilityLevel.SequenceBreak
          if has("card") or has("logic_gerudo_kitchen") then
            kitchen = AccessibilityLevel.Normal
          end
          return and_accessibility(weapon, kitchen)
        end,
        ["adult_access"] = function()
          if has("card") or has("bow") or has("hookshot") or has("hoverboots") or has("logic_gerudo_kitchen") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.SequenceBreak
        end
      },
      ["Hideout Jail Guard (4 Torches)"] = {
        ["child_access"] = function()
          if has("sword1") then
            return AccessibilityLevel.Normal
          elseif has("sticks") then
            return AccessibilityLevel.SequenceBreak
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Hideout Gerudo Membership Card"] = {
        ["child_access"] = function()
          return can_finish_GerudoFortress("child")
        end,
        ["adult_access"] = function()
          return can_finish_GerudoFortress("adult")
        end
      },
      ["GF GS Archery Range"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          local card = has("card") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local collect = has("hookshot") and AccessibilityLevel.Normal or AccessibilityLevel.Inspect
          local kill = has_explosives()
          if has("hookshot") or has("bow") or (has("dinsfire") and has("magic")) then
            kill = AccessibilityLevel.Normal
          end

          return and_accessibility(night_gs(), card, collect, kill)
        end
      },
      ["GF GS Top Floor"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          local kitchen = AccessibilityLevel.SequenceBreak
          if has("card") or has("bow") or has("hookshot") or has("hoverboots") or has("logic_gerudo_kitchen") then
            kitchen = AccessibilityLevel.Normal
          end
          return and_accessibility(kitchen, night_gs())
        end
      }
    },
    ["exits"] = {
      ["GV Fortress Side"] = {
        ["setting"] = "setting_entrance_overworld_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["GF Outside Gate"] = {
        ["child_access"] = function()
          return gf_gate_open()
        end,
        ["adult_access"] = function()
          if has("card") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["Gerudo Training Ground Split"] = {
        ["setting"] = "setting_entrance_dungeons_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("card") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["GF Storms Grotto"] = {
        ["setting"] = "setting_entrance_grottos_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return can_open_storm_grotto()
        end
      }
    }
  },
  ["GF Outside Gate"] = {
    ["scene"] = "Gerudo Fortress",
    ["pool"] = ER_POOL_TYPES.OW,
    ["exits"] = {
      ["Gerudo Fortress"] = {
        ["child_access"] = function()
          return gf_gate_open()
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Wasteland Near Fortress"] = {
        ["setting"] = "setting_entrance_overworld_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Wasteland Near Fortress"] = {
    ["scene"] = "Haunted Wasteland",
    ["pool"] = ER_POOL_TYPES.OW,
    ["exits"] = {
      ["GF Outside Gate"] = {
        ["setting"] = "setting_entrance_overworld_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Haunted Wasteland"] = {
        ["child_access"] = function()
          if has("logic_wasteland_crossing") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.SequenceBreak
        end,
        ["adult_access"] = function()
          if has("logic_wasteland_crossing") or has("hoverboots") or has("longshot") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.SequenceBreak
        end
      }
    }
  },
  ["Haunted Wasteland"] = {
    ["scene"] = "Haunted Wasteland",
    ["pool"] = ER_POOL_TYPES.OW,
    ["locations"] = {
      ["Wasteland Chest"] = {
        ["child_access"] = function()
          if has("dinsfire") and has("magic") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return has_fire()
        end
      },
      ["Wasteland Bombchu Salesman"] = {
        ["child_access"] = function()
          if has("wallet") and (has("sticks") or has("sword1")) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("wallet") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["Wasteland GS"] = {
        ["child_access"] = function()
          if has("boomerang") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.Inspect
        end,
        ["adult_access"] = function()
          if has("hookshot") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.Inspect
        end
      }
    },
    ["exits"] = {
      ["Wasteland Near Colossus"] = {
        ["child_access"] = function()
          if has("logic_lens_wasteland") or (has("lens") and has("magic")) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.SequenceBreak
        end,
        ["adult_access"] = function()
          if has("logic_lens_wasteland") or (has("lens") and has("magic")) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.SequenceBreak
        end
      },
      ["Wasteland Near Fortress"] = {
        ["child_access"] = function()
          if has("logic_wasteland_crossing") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.SequenceBreak
        end,
        ["adult_access"] = function()
          if has("logic_wasteland_crossing") or has("hoverboots") or has("longshot") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.SequenceBreak
        end
      }
    }
  },
  ["Wasteland Near Colossus"] = {
    ["scene"] = "Haunted Wasteland",
    ["pool"] = ER_POOL_TYPES.OW,
    ["exits"] = {
      ["Desert Colossus"] = {
        ["setting"] = "setting_entrance_overworld_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Haunted Wasteland"] = {
        ["child_access"] = function()
          if has("logic_reverse_wasteland") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.SequenceBreak
        end,
        ["adult_access"] = function()
          if has("logic_reverse_wasteland") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.SequenceBreak
        end
      }
    }
  },
  ["Desert Colossus"] = {
    ["scene"] = "Desert Colossus",
    ["pool"] = ER_POOL_TYPES.OW,
    ["locations"] = {
      ["Sheik at Colossus"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Colossus Freestanding PoH"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Inspect
        end,
        ["adult_access"] = function()
          if has("beans") then
            return access_region("Desert Colossus", "child")
          end
          return AccessibilityLevel.Inspect
        end
      },
      ["Colossus GS Bean Patch"] = {
        ["child_access"] = function()
          return and_accessibility(has_bottle(), can_child_attack())
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["Colossus GS Tree"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          local collect = has("hookshot") and AccessibilityLevel.Normal or AccessibilityLevel.Inspect
          local kill = has_explosives()
          if has("hookshot") or has("bow") or (has("dinsfire") and has("magic")) then
            kill = AccessibilityLevel.Normal
          end

          return and_accessibility(night_gs(), collect, kill)
        end
      },
      ["Colossus GS Hill"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          local bean = AccessibilityLevel.None
          if has("beans") then
            bean = access_region("Desert Colossus", "child")
          end
          local collect = AccessibilityLevel.Inspect
          if has("longshot") then
            collect = AccessibilityLevel.Normal
          elseif has("hookshot") then
            if has("logic_colossus_gs") then
              collect = AccessibilityLevel.Normal
            else
              collect = AccessibilityLevel.SequenceBreak
            end
          end
          local kill = has_bombchus()
          if has("hookshot") or has("bow") then
            kill = AccessibilityLevel.Normal
          end

          return and_accessibility(night_gs(), or_accessibility(bean, and_accessibility(collect, kill)))
        end
      }
    },
    ["exits"] = {
      ["Colossus Great Fairy Fountain"] = {
        ["setting"] = "setting_entrance_interiors_simple",
        ["child_access"] = function()
          return has_explosives()
        end,
        ["adult_access"] = function()
          return has_explosives()
        end
      },
      ["Spirit Temple Split"] = {
        ["setting"] = "setting_entrance_dungeons_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Wasteland Near Colossus"] = {
        ["setting"] = "setting_entrance_overworld_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Colossus Grotto"] = {
        ["setting"] = "setting_entrance_grottos_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("lift2") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Desert Colossus From Spirit Lobby"] = {
    ["scene"] = "Desert Colossus",
    ["pool"] = ER_POOL_TYPES.OW,
    ["exits"] = {
      ["Desert Colossus"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Colossus Great Fairy Fountain"] = {
    ["scene"] = "Colossus Great Fairy Fountain",
    ["pool"] = ER_POOL_TYPES.INTERIOR,
    ["locations"] = {
      ["Colossus Great Fairy Reward"] = {
        ["child_access"] = function()
          if has("ocarina") and has("lullaby") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("ocarina") and has("lullaby") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["Desert Colossus"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Market Entrance"] = {
    ["scene"] = "Market Entrance",
    ["pool"] = ER_POOL_TYPES.OW,
    ["exits"] = {
      ["Hyrule Field"] = {
        ["setting"] = "setting_entrance_overworld_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Market"] = {
        ["setting"] = "setting_entrance_overworld_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Market Guard House"] = {
        ["setting"] = "setting_entrance_interiors_simple",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Market"] = {
    ["scene"] = "Market",
    ["pool"] = ER_POOL_TYPES.OW,
    ["exits"] = {
      ["Market Entrance"] = {
        ["setting"] = "setting_entrance_overworld_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["ToT Entrance"] = {
        ["setting"] = "setting_entrance_overworld_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Castle Grounds"] = {
        ["setting"] = "setting_entrance_overworld_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Market Bazaar"] = {
        ["setting"] = "setting_entrance_interiors_simple",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["Market Mask Shop"] = {
        ["setting"] = "setting_entrance_interiors_simple",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["Market Shooting Gallery"] = {
        ["setting"] = "setting_entrance_interiors_simple",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["Market Bombchu Bowling"] = {
        ["setting"] = "setting_entrance_interiors_simple",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["Market Potion Shop"] = {
        ["setting"] = "setting_entrance_interiors_simple",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["Market Treasure Chest Game"] = {
        ["setting"] = "setting_entrance_interiors_simple",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["Market Back Alley"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Market Back Alley"] = {
    ["scene"] = "Market",
    ["pool"] = ER_POOL_TYPES.OW,
    ["exits"] = {
      ["Market"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Market Bombchu Shop"] = {
        ["setting"] = "setting_entrance_interiors_simple",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Market Dog Lady House"] = {
        ["fixed"] = true,
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Market Man in Green House"] = {
        ["setting"] = "setting_entrance_interiors_simple",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["ToT Entrance"] = {
    ["scene"] = "ToT Entrance",
    ["pool"] = ER_POOL_TYPES.OW,
    ["exits"] = {
      ["Market"] = {
        ["setting"] = "setting_entrance_overworld_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Temple of Time"] = {
        ["setting"] = "setting_entrance_interiors_all",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Temple of Time"] = {
    ["scene"] = "Temple of Time",
    ["pool"] = ER_POOL_TYPES.INTERIOR,
    ["locations"] = {
      ["ToT Light Arrows Cutscene"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("lacs_meds", 2) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["ToT Entrance"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Beyond Door of Time"] = {
        ["child_access"] = function()
          if has("setting_door_open") or (has("ocarina") and has("time")) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("setting_door_open") or (has("ocarina") and has("time")) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Beyond Door of Time"] = {
    ["scene"] = "Temple of Time",
    ["pool"] = ER_POOL_TYPES.INTERIOR,
    ["locations"] = {
      ["Sheik at Temple"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("forestmed") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["Temple of Time"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Castle Grounds"] = {
    ["scene"] = "Castle Grounds",
    ["pool"] = ER_POOL_TYPES.OW,
    ["exits"] = {
      ["Market"] = {
        ["setting"] = "setting_entrance_overworld_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Hyrule Castle Grounds"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["Ganons Castle Grounds"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Hyrule Castle Grounds"] = {
    ["scene"] = "Castle Grounds",
    ["pool"] = ER_POOL_TYPES.OW,
    ["locations"] = {
      ["HC Malon Egg"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["HC GS Tree"] = {
        ["child_access"] = function()
          return can_child_attack()
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["Castle Grounds"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["HC Garden"] = {
        ["child_access"] = function()
          if has("childcucco") or has("setting_shuffle_egg_no") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["HC Great Fairy Fountain"] = {
        ["setting"] = "setting_entrance_interiors_simple",
        ["child_access"] = function()
          return has_explosives()
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["HC Storms Grotto"] = {
        ["setting"] = "setting_entrance_grottos_shuffle",
        ["child_access"] = function()
          return can_open_storm_grotto()
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["HC Garden"] = {
    ["scene"] = "Castle Grounds",
    ["pool"] = ER_POOL_TYPES.INTERIOR,
    ["locations"] = {
      ["HC Zeldas Letter"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Song from Impa"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["Hyrule Castle Grounds"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["HC Great Fairy Fountain"] = {
    ["scene"] = "HC Great Fairy Fountain",
    ["pool"] = ER_POOL_TYPES.INTERIOR,
    ["locations"] = {
      ["HC Great Fairy Reward"] = {
        ["child_access"] = function()
          if has("ocarina") and has("lullaby") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("ocarina") and has("lullaby") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["Castle Grounds"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Ganons Castle Grounds"] = {
    ["scene"] = "Castle Grounds",
    ["pool"] = ER_POOL_TYPES.OW,
    ["locations"] = {
      ["OGC GS"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["Castle Grounds"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["OGC Great Fairy Fountain"] = {
        ["setting"] = "setting_entrance_interiors_simple",
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("lift3") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["Ganons Castle Split"] = {
        ["fixed"] = true,
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return can_spawn_rainbow_bridge()
        end
      }
    }
  },
  ["OGC Great Fairy Fountain"] = {
    ["scene"] = "OGC Great Fairy Fountain",
    ["pool"] = ER_POOL_TYPES.INTERIOR,
    ["locations"] = {
      ["OGC Great Fairy Reward"] = {
        ["child_access"] = function()
          if has("ocarina") and has("lullaby") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("ocarina") and has("lullaby") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["Castle Grounds"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Market Guard House"] = {
    ["scene"] = "Market Guard House",
    ["pool"] = ER_POOL_TYPES.INTERIOR,
    ["locations"] = {
      ["Market 10 Big Poes"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("bow") and has("ocarina") and has("epona") then
            return has_bottle()
          end
          return AccessibilityLevel.None
        end
      },
      ["Market GS Guard House"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["Market Entrance"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Market Bazaar"] = {
    ["scene"] = "Market Bazaar",
    ["pool"] = ER_POOL_TYPES.INTERIOR,
    ["locations"] = {
      ["Market Bazaar Items"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["Market"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Market Mask Shop"] = {
    ["scene"] = "Market Mask Shop",
    ["pool"] = ER_POOL_TYPES.INTERIOR,
    ["exits"] = {
      ["Market"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Market Shooting Gallery"] = {
    ["scene"] = "Market Shooting Gallery",
    ["pool"] = ER_POOL_TYPES.INTERIOR,
    ["locations"] = {
      ["Market Shooting Gallery Reward"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["Market"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Market Bombchu Bowling"] = {
    ["scene"] = "Market Bombchu Bowling",
    ["pool"] = ER_POOL_TYPES.INTERIOR,
    ["locations"] = {
      ["Market Bombchu Bowling First Prize"] = {
        ["child_access"] = function()
          if has_bombchus() == AccessibilityLevel.Normal then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has_bombchus() == AccessibilityLevel.Normal then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["Market Bombchu Bowling Second Prize"] = {
        ["child_access"] = function()
          if has_bombchus() == AccessibilityLevel.Normal then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has_bombchus() == AccessibilityLevel.Normal then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["Market"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Market Potion Shop"] = {
    ["scene"] = "Market Potion Shop",
    ["pool"] = ER_POOL_TYPES.INTERIOR,
    ["locations"] = {
      ["Market Potion Shop Items"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["Market"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Market Treasure Chest Game"] = {
    ["scene"] = "Market Treasure Chest Game",
    ["pool"] = ER_POOL_TYPES.INTERIOR,
    ["locations"] = {
      ["Market Treasure Chest Game Reward"] = {
        ["child_access"] = function()
          if has("lens") and has("magic") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.SequenceBreak
        end,
        ["adult_access"] = function()
          if has("lens") and has("magic") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.SequenceBreak
        end
      }
    },
    ["exits"] = {
      ["Market"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Market Bombchu Shop"] = {
    ["scene"] = "Market Bombchu Shop",
    ["pool"] = ER_POOL_TYPES.INTERIOR,
    ["locations"] = {
      ["Market Bombchu Shop Items"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["Market Back Alley"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Market Dog Lady House"] = {
    ["scene"] = "Market Dog Lady House",
    ["pool"] = ER_POOL_TYPES.INTERIOR,
    ["locations"] = {
      ["Market Lost Dog"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["Market Back Alley"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Market Man in Green House"] = {
    ["scene"] = "Market Man in Green House",
    ["pool"] = ER_POOL_TYPES.INTERIOR,
    ["exits"] = {
      ["Market Back Alley"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Kakariko Village"] = {
    ["scene"] = "Kakariko Village",
    ["pool"] = ER_POOL_TYPES.OW,
    ["locations"] = {
      ["Sheik in Kakariko"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("forestmed") and has("noct_meds", 2) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["Kak Anju as Adult"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Kak Anju as Child"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["Kak GS House Under Construction"] = {
        ["child_access"] = function()
          return night_gs()
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["Kak GS Skulltula House"] = {
        ["child_access"] = function()
          return night_gs()
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["Kak GS Guards House"] = {
        ["child_access"] = function()
          return night_gs()
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["Kak GS Tree"] = {
        ["child_access"] = function()
          return night_gs()
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["Kak GS Watchtower"] = {
        ["child_access"] = function()
          local sling = has("sling") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local melee = (has("sticks") or has("sword1")) and AccessibilityLevel.Normal or AccessibilityLevel.None
          local trick = has("logic_kakariko_tower_gs") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak

          return and_accessibility(
            night_gs(),
            or_accessibility(sling, has_bombchus(), and_accessibility(melee, trick, damage_single_instance_ohko()))
          )
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["Hyrule Field"] = {
        ["setting"] = "setting_entrance_overworld_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Kak Carpenter Boss House"] = {
        ["setting"] = "setting_entrance_interiors_simple",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Kak House of Skulltula"] = {
        ["setting"] = "setting_entrance_interiors_simple",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Kak Impas House"] = {
        ["setting"] = "setting_entrance_interiors_simple",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Kak Windmill"] = {
        ["setting"] = "setting_entrance_interiors_all",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Kak Bazaar"] = {
        ["setting"] = "setting_entrance_interiors_simple",
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Kak Shooting Gallery"] = {
        ["setting"] = "setting_entrance_interiors_simple",
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Bottom of the Well Split"] = {
        ["setting"] = "setting_entrance_dungeons_shuffle",
        ["child_access"] = function()
          return drain_well()
        end,
        ["adult_access"] = function()
          if has("setting_entrance_dungeons_shuffle") then
            return drain_well()
          end
          return AccessibilityLevel.None
        end
      },
      ["Kak Potion Shop Front"] = {
        ["setting"] = "setting_entrance_interiors_all",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Kak Redead Grotto"] = {
        ["setting"] = "setting_entrance_grottos_shuffle",
        ["child_access"] = function()
          return and_accessibility(hidden_grotto(), has_explosives())
        end,
        ["adult_access"] = function()
          return and_accessibility(hidden_grotto(), can_blast())
        end
      },
      ["Kak Impas Ledge"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          if has("logic_visible_collisions") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.SequenceBreak
        end
      },
      ["Kak Impas Rooftop"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("hookshot") then
            return AccessibilityLevel.Normal
          elseif has("hoverboots") then
            if has("logic_kakariko_rooftop_gs") then
              return AccessibilityLevel.Normal
            end
            return AccessibilityLevel.SequenceBreak
          end
          return AccessibilityLevel.None
        end
      },
      ["Kak Odd Medicine Rooftop"] = {
        ["child_access"] = function()
          if has("logic_man_on_roof") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.SequenceBreak
        end,
        ["adult_access"] = function()
          if has("logic_man_on_roof") or has("hookshot") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.SequenceBreak
        end
      },
      ["Kak Backyard"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Graveyard"] = {
        ["setting"] = "setting_entrance_overworld_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Kak Behind Gate"] = {
        ["child_access"] = function()
          if has("setting_kak_open") or has("postzelda") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Kak Impas Ledge"] = {
    ["scene"] = "Kakariko Village",
    ["pool"] = ER_POOL_TYPES.OW,
    ["exits"] = {
      ["Kak Impas House Back"] = {
        ["setting"] = "setting_entrance_interiors_simple",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Kakariko Village"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Kak Impas Rooftop"] = {
    ["scene"] = "Kakariko Village",
    ["pool"] = ER_POOL_TYPES.OW,
    ["locations"] = {
      ["Kak GS Above Impas House"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return night_gs()
        end
      }
    },
    ["exits"] = {
      ["Kak Impas Ledge"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Kakariko Village"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Kak Odd Medicine Rooftop"] = {
    ["scene"] = "Kakariko Village",
    ["pool"] = ER_POOL_TYPES.OW,
    ["locations"] = {
      ["Kak Man on Roof"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["Kakariko Village"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Kak Backyard"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Kak Backyard"] = {
    ["scene"] = "Kakariko Village",
    ["pool"] = ER_POOL_TYPES.OW,
    ["exits"] = {
      ["Kakariko Village"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Kak Open Grotto"] = {
        ["setting"] = "setting_entrance_grottos_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Kak Odd Medicine Building"] = {
        ["setting"] = "setting_entrance_interiors_simple",
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Kak Potion Shop Back"] = {
        ["setting"] = "setting_entrance_interiors_all",
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Kak Carpenter Boss House"] = {
    ["scene"] = "Kak Carpenter Boss House",
    ["pool"] = ER_POOL_TYPES.INTERIOR,
    ["exits"] = {
      ["Kakariko Village"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Kak House of Skulltula"] = {
    ["scene"] = "Kak House of Skulltula",
    ["pool"] = ER_POOL_TYPES.INTERIOR,
    ["locations"] = {
      ["Kak 10 Gold Skulltula Reward"] = {
        ["child_access"] = function()
          if has("skulltula", 10) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("skulltula", 10) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["Kak 20 Gold Skulltula Reward"] = {
        ["child_access"] = function()
          if has("skulltula", 20) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("skulltula", 20) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["Kak 30 Gold Skulltula Reward"] = {
        ["child_access"] = function()
          if has("skulltula", 30) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("skulltula", 30) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["Kak 40 Gold Skulltula Reward"] = {
        ["child_access"] = function()
          if has("skulltula", 40) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("skulltula", 40) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["Kak 50 Gold Skulltula Reward"] = {
        ["child_access"] = function()
          if has("skulltula", 50) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("skulltula", 50) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["Kakariko Village"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Kak Impas House"] = {
    ["scene"] = "Kak Impas House",
    ["pool"] = ER_POOL_TYPES.INTERIOR,
    ["exits"] = {
      ["Kakariko Village"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Kak Impas House Near Cow"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Kak Impas House Back"] = {
    ["scene"] = "Kak Impas House",
    ["pool"] = ER_POOL_TYPES.INTERIOR,
    ["locations"] = {
      ["Kak Impas House Freestanding PoH"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["Kak Impas Ledge"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Kak Impas House Near Cow"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Kak Impas House Near Cow"] = {
    ["scene"] = "Kak Impas House",
    ["pool"] = ER_POOL_TYPES.INTERIOR,
    ["locations"] = {
      ["Kak Impas House Cow"] = {
        ["child_access"] = function()
          if has("ocarina") and has("epona") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("ocarina") and has("epona") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Kak Windmill"] = {
    ["scene"] = "Windmill and Dampes Grave",
    ["pool"] = ER_POOL_TYPES.INTERIOR,
    ["locations"] = {
      ["Kak Windmill Freestanding PoH"] = {
        ["child_access"] = function()
          if has("boomerang") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.Inspect
        end,
        ["adult_access"] = function()
          local trick = has("logic_windmill_poh") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
          local sot = (has("ocarina") and has("time")) and AccessibilityLevel.Normal or AccessibilityLevel.None
          return or_accessibility(trick, and_accessibility(sot, access_region("Graveyard Dampes Grave", "adult")))
        end
      },
      ["Song from Windmill"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("ocarina") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["Kakariko Village"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Kak Bazaar"] = {
    ["scene"] = "Kak Bazaar",
    ["pool"] = ER_POOL_TYPES.INTERIOR,
    ["locations"] = {
      ["Kak Bazaar Items"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["Kakariko Village"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Kak Shooting Gallery"] = {
    ["scene"] = "Kak Shooting Gallery",
    ["pool"] = ER_POOL_TYPES.INTERIOR,
    ["locations"] = {
      ["Kak Shooting Gallery Reward"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("bow") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["Kakariko Village"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Kak Potion Shop Front"] = {
    ["scene"] = "Kak Potion Shop",
    ["pool"] = ER_POOL_TYPES.INTERIOR,
    ["locations"] = {
      ["Kak Potion Shop Items"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["Kakariko Village"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Kak Potion Shop Back"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Kak Potion Shop Back"] = {
    ["scene"] = "Kak Potion Shop",
    ["pool"] = ER_POOL_TYPES.INTERIOR,
    ["exits"] = {
      ["Kak Backyard"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Kak Potion Shop Front"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Kak Odd Medicine Building"] = {
    ["scene"] = "Kak Odd Medicine Building",
    ["pool"] = ER_POOL_TYPES.INTERIOR,
    ["exits"] = {
      ["Kak Backyard"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Graveyard"] = {
    ["scene"] = "Graveyard",
    ["pool"] = ER_POOL_TYPES.OW,
    ["locations"] = {
      ["Graveyard Freestanding PoH"] = {
        ["child_access"] = function()
          if has("boomerang") then
            if has("logic_graveyard_poh") then
              return AccessibilityLevel.Normal
            end
            return AccessibilityLevel.SequenceBreak
          end
          return AccessibilityLevel.Inspect
        end,
        ["adult_access"] = function()
          local ls = has("longshot") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local bean = AccessibilityLevel.None
          if has("beans") then
            bean = access_region("Graveyard", "child")
          end
          return or_accessibility(ls, bean, AccessibilityLevel.Inspect)
        end
      },
      ["Graveyard Dampe Gravedigging Tour"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["Graveyard GS Wall"] = {
        ["child_access"] = function()
          local collect = has("boomerang") and AccessibilityLevel.Normal or AccessibilityLevel.Inspect
          local kill = has_explosives()
          if has("boomerang") or has("sling") or (has("dinsfire") and has("magic")) then
            kill = AccessibilityLevel.Normal
          end

          return and_accessibility(night_gs(), collect, kill)
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["Graveyard GS Bean Patch"] = {
        ["child_access"] = function()
          return and_accessibility(has_bottle(), can_child_attack())
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["Graveyard Shield Grave"] = {
        ["setting"] = "setting_entrance_grottos_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Royal Familys Tomb"] = {
        ["setting"] = "setting_entrance_grottos_shuffle",
        ["child_access"] = function()
          if has("ocarina") and has("lullaby") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("ocarina") and has("lullaby") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["Graveyard Heart Piece Grave"] = {
        ["setting"] = "setting_entrance_grottos_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Graveyard Dampes Grave"] = {
        ["setting"] = "setting_entrance_grottos_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Graveyard Dampes House"] = {
        ["setting"] = "setting_entrance_interiors_simple",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Kakariko Village"] = {
        ["setting"] = "setting_entrance_overworld_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Graveyard Shield Grave"] = {
    ["scene"] = "Graveyard Shield Grave",
    ["pool"] = ER_POOL_TYPES.GROTTO,
    ["locations"] = {
      ["Graveyard Shield Grave Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["Graveyard"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Graveyard Heart Piece Grave"] = {
    ["scene"] = "Graveyard Heart Piece Grave",
    ["pool"] = ER_POOL_TYPES.GROTTO,
    ["locations"] = {
      ["Graveyard Heart Piece Grave Chest"] = {
        ["child_access"] = function()
          if has("ocarina") and has("sun") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("ocarina") and has("sun") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["Graveyard"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Royal Familys Tomb"] = {
    ["scene"] = "Royal Familys Tomb",
    ["pool"] = ER_POOL_TYPES.GROTTO,
    ["locations"] = {
      ["Royal Familys Tomb Chest"] = {
        ["child_access"] = function()
          if has("dinsfire") and has("magic") then
            return AccessibilityLevel.Normal
          elseif has("sticks") then
            return AccessibilityLevel.SequenceBreak
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return has_fire()
        end
      },
      ["Song from Royal Familys Tomb"] = {
        ["child_access"] = function()
          if has("sling") or has("boomerang") or has("sticks") or has("sword1") then
            return AccessibilityLevel.Normal
          end
          return has_explosives()
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["Graveyard"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Graveyard Dampes Grave"] = {
    ["scene"] = "Windmill and Dampes Grave",
    ["pool"] = ER_POOL_TYPES.GROTTO,
    ["locations"] = {
      ["Graveyard Hookshot Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Graveyard Dampe Race Freestanding PoH"] = {
        ["child_access"] = function()
          if has("logic_child_dampe_race_poh") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.SequenceBreak
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["Graveyard"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Kak Windmill"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("ocarina") and has("time") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Graveyard Dampes House"] = {
    ["scene"] = "Graveyard Dampes House",
    ["pool"] = ER_POOL_TYPES.INTERIOR,
    ["exits"] = {
      ["Graveyard"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Graveyard Warp Pad Region"] = {
    ["scene"] = "Graveyard",
    ["pool"] = ER_POOL_TYPES.OW,
    ["exits"] = {
      ["Graveyard"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Shadow Temple Split"] = {
        ["setting"] = "setting_entrance_dungeons_shuffle",
        ["child_access"] = function()
          if has("dinsfire") and has("magic") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("magic") and (has("dinsfire") or (has("firearrow") and has("logic_shadow_fire_arrow_entry"))) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Kak Behind Gate"] = {
    ["scene"] = "Kakariko Village",
    ["pool"] = ER_POOL_TYPES.OW,
    ["exits"] = {
      ["Kakariko Village"] = {
        ["child_access"] = function()
          if
            has("logic_visible_collisions") or has("setting_kak_open") or
              (has("setting_kak_letter") and has("postzelda"))
           then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.SequenceBreak
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Death Mountain"] = {
        ["setting"] = "setting_entrance_overworld_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Death Mountain"] = {
    ["scene"] = "Death Mountain",
    ["pool"] = ER_POOL_TYPES.OW,
    ["locations"] = {
      ["DMT Chest"] = {
        ["child_access"] = function()
          local trick = AccessibilityLevel.None
          if has("lift1") then
            if has("logic_dmt_bombable") then
              trick = AccessibilityLevel.Normal
            else
              trick = AccessibilityLevel.SequenceBreak
            end
          end
          return or_accessibility(has_explosives(), trick)
        end,
        ["adult_access"] = function()
          return can_blast()
        end
      },
      ["DMT Freestanding PoH"] = {
        ["child_access"] = function()
          return damage_single_instance_ohko()
        end,
        ["adult_access"] = function()
          if has("hoverboots") then
            return AccessibilityLevel.Normal
          end
          local bean = AccessibilityLevel.None
          if has("beans") then
            local lift = AccessibilityLevel.None
            if has("lift1") then
              lift = AccessibilityLevel.Normal
            end
            bean = and_accessibility(access_region("Death Mountain", "child"), or_accessibility(has_explosives(), lift))
          end
          return or_accessibility(damage_single_instance_ohko(), bean)
        end
      },
      ["DMT GS Bean Patch"] = {
        ["child_access"] = function()
          local acc = AccessibilityLevel.None
          if has("lift") then
            acc = AccessibilityLevel.Normal
          else
            local trick = AccessibilityLevel.None
            if has("boomerang") then
              if has("logic_dmt_soil_gs") then
                trick = AccessibilityLevel.Normal
              else
                trick = AccessibilityLevel.SequenceBreak
              end
            end
            acc = or_accessibility(has_explosives(), trick)
          end
          return and_accessibility(has_bottle(), can_child_attack(), acc)
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["DMT GS Near Kak"] = {
        ["child_access"] = function()
          return has_explosives()
        end,
        ["adult_access"] = function()
          return can_blast()
        end
      },
      ["DMT GS Above Dodongos Cavern"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("hammer") then
            return night_gs()
          end

          local hs = AccessibilityLevel.None
          if has("hookshot") then
            if has("logic_trail_gs_lower_hookshot") then
              hs = AccessibilityLevel.Normal
            else
              hs = AccessibilityLevel.SequenceBreak
            end
          end

          local hb = AccessibilityLevel.None
          if has("hoverboots") then
            if has("logic_trail_gs_lower_hovers") then
              hb = AccessibilityLevel.Normal
            else
              hb = AccessibilityLevel.SequenceBreak
            end
          end

          local bean = AccessibilityLevel.None
          if has("beans") then
            local trick =
              has("logic_trail_gs_lower_bean") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
            local lift = AccessibilityLevel.None
            if has("lift1") then
              lift = AccessibilityLevel.Normal
            end
            bean =
              and_accessibility(
              trick,
              access_region("Death Mountain", "child"),
              or_accessibility(has_explosives(), lift)
            )
          end

          return and_accessibility(night_gs(), or_accessibility(hs, hb, bean))
        end
      }
    },
    ["exits"] = {
      ["Kak Behind Gate"] = {
        ["setting"] = "setting_entrance_overworld_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Goron City"] = {
        ["setting"] = "setting_entrance_overworld_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Death Mountain Summit"] = {
        ["child_access"] = function()
          local hammer = has("hammer") and AccessibilityLevel.Normal or AccessibilityLevel.None

          return or_accessibility(has_explosives(), and_accessibility(hammer, access_region("Death Mountain", "adult")))
        end,
        ["adult_access"] = function()
          local beans = has("beans") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local lift = has("lift") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local trick = has("logic_dmt_climb_hovers") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
          local hovers = has("hoverboots") and AccessibilityLevel.Normal or AccessibilityLevel.None

          return or_accessibility(
            can_blast(),
            or_accessibility(
              and_accessibility(beans, lift, access_region("Death Mountain", "child")),
              and_accessibility(trick, hovers)
            )
          )
        end
      },
      ["Dodongos Cavern Split"] = {
        ["setting"] = "setting_entrance_dungeons_shuffle",
        ["child_access"] = function()
          if has("lift1") then
            return AccessibilityLevel.Normal
          end
          return has_explosives()
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["DMT Storms Grotto"] = {
        ["setting"] = "setting_entrance_grottos_shuffle",
        ["child_access"] = function()
          return can_open_storm_grotto()
        end,
        ["adult_access"] = function()
          return can_open_storm_grotto()
        end
      }
    }
  },
  ["Death Mountain Summit"] = {
    ["scene"] = "Death Mountain",
    ["pool"] = ER_POOL_TYPES.OW,
    ["locations"] = {
      ["DMT Biggoron"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("claimcheck") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["DMT GS Falling Rocks Path"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          local acc = AccessibilityLevel.SequenceBreak
          if has("hammer") or has("logic_trail_gs_upper") then
            acc = AccessibilityLevel.Normal
          end
          return and_accessibility(acc, night_gs())
        end
      }
    },
    ["exits"] = {
      ["Death Mountain"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["DMC Upper Local"] = {
        ["setting"] = "setting_entrance_overworld_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["DMT Owl Flight"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["DMT Cow Grotto"] = {
        ["setting"] = "setting_entrance_grottos_shuffle",
        ["child_access"] = function()
          return has_explosives()
        end,
        ["adult_access"] = function()
          return can_blast()
        end
      },
      ["DMT Great Fairy Fountain"] = {
        ["setting"] = "setting_entrance_interiors_simple",
        ["child_access"] = function()
          return has_explosives()
        end,
        ["adult_access"] = function()
          return can_blast()
        end
      }
    }
  },
  ["DMT Owl Flight"] = {
    ["scene"] = "Death Mountain",
    ["pool"] = ER_POOL_TYPES.ROOT,
    ["exits"] = {
      ["Kak Impas Rooftop"] = {
        ["setting"] = "setting_entrance_owl_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Goron City"] = {
    ["scene"] = "Goron City",
    ["pool"] = ER_POOL_TYPES.OW,
    ["locations"] = {
      ["GC Maze Left Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("hammer") or has("lift2") then
            return AccessibilityLevel.Normal
          elseif has("hoverboots") then
            local trick = AccessibilityLevel.SequenceBreak
            if has("logic_goron_city_leftmost") then
              trick = AccessibilityLevel.Normal
            end
            return and_accessibility(trick, has_explosives())
          end
          return AccessibilityLevel.None
        end
      },
      ["GC Maze Center Chest"] = {
        ["child_access"] = function()
          return has_explosives()
        end,
        ["adult_access"] = function()
          if has("lift2") then
            return AccessibilityLevel.Normal
          end
          return can_blast()
        end
      },
      ["GC Maze Right Chest"] = {
        ["child_access"] = function()
          return has_explosives()
        end,
        ["adult_access"] = function()
          if has("lift2") then
            return AccessibilityLevel.Normal
          end
          return can_blast()
        end
      },
      ["GC Pot Freestanding PoH"] = {
        ["child_access"] = function()
          local explo = AccessibilityLevel.None
          if has("bombs") then
            explo = AccessibilityLevel.Normal
          else
            local lift = AccessibilityLevel.None
            if has("lift1") then
              if has("logic_goron_city_pot_with_strength") then
                lift = AccessibilityLevel.Normal
              else
                lift = AccessibilityLevel.SequenceBreak
              end
            end

            local chus = AccessibilityLevel.None
            if has("logic_goron_city_pot") then
              chus = and_accessibility(has_bombchus(), AccessibilityLevel.Normal)
            else
              chus = and_accessibility(has_bombchus(), AccessibilityLevel.SequenceBreak)
            end

            explo = or_accessibility(lift, chus)
          end
          return and_accessibility(gc_child_fire(), explo)
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["GC Rolling Goron as Child"] = {
        ["child_access"] = function()
          local trick = AccessibilityLevel.None
          if has("lift1") then
            if has("logic_child_rolling_with_strength") then
              trick = AccessibilityLevel.Normal
            else
              trick = AccessibilityLevel.SequenceBreak
            end
          end
          return or_accessibility(has_explosives(), trick)
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["GC Medigoron"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("wallet") then
            if has("lift1") then
              return AccessibilityLevel.Normal
            end
            return can_blast()
          end
          return AccessibilityLevel.None
        end
      },
      ["GC Rolling Goron as Adult"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return link_the_goron()
        end
      },
      ["GC GS Boulder Maze"] = {
        ["child_access"] = function()
          return has_explosives()
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["GC GS Center Platform"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["Death Mountain"] = {
        ["setting"] = "setting_entrance_overworld_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["GC Woods Warp"] = {
        ["child_access"] = function()
          return woods_warp_open()
        end,
        ["adult_access"] = function()
          return woods_warp_open()
        end
      },
      ["GC Shop"] = {
        ["setting"] = "setting_entrance_interiors_simple",
        ["child_access"] = function()
          if has("lift1") then
            return AccessibilityLevel.Normal
          end
          return or_accessibility(has_explosives(), gc_child_fire())
        end,
        ["adult_access"] = function()
          return link_the_goron()
        end
      },
      ["GC Darunias Chamber"] = {
        ["child_access"] = function()
          if has("ocarina") and has("lullaby") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return link_the_goron()
        end
      },
      ["GC Grotto Platform"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          local below_quad = damage_below_quadruple()
          local below_ohko = damage_below_ohko()
          local sot = (has("ocarina") and has("time")) and AccessibilityLevel.Normal or AccessibilityLevel.None
          local tunic = has("redtunic") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local ls = has("longshot") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local nl = (has("nayrus") and has("magic")) and AccessibilityLevel.Normal or AccessibilityLevel.None
          local hs = has("hookshot") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local trick = has("logic_goron_grotto") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak

          return or_accessibility(
            and_accessibility(sot, or_accessibility(below_quad, tunic, ls, nl)),
            and_accessibility(
              hs,
              or_accessibility(and_accessibility(below_ohko, tunic), nl, and_accessibility(below_quad, trick))
            )
          )
        end
      }
    }
  },
  ["GC Woods Warp"] = {
    ["scene"] = "Goron City",
    ["pool"] = ER_POOL_TYPES.OW,
    ["exits"] = {
      ["Goron City"] = {
        ["child_access"] = function()
          return and_accessibility(can_leave_forest(), woods_warp_open())
        end,
        ["adult_access"] = function()
          return woods_warp_open()
        end
      },
      ["Lost Woods"] = {
        ["setting"] = "setting_entrance_overworld_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["GC Darunias Chamber"] = {
    ["scene"] = "Goron City",
    ["pool"] = ER_POOL_TYPES.OW,
    ["locations"] = {
      ["GC Darunias Joy"] = {
        ["child_access"] = function()
          if has("ocarina") and has("saria") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["Goron City"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["DMC Lower Local"] = {
        ["setting"] = "setting_entrance_overworld_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["GC Grotto Platform"] = {
    ["scene"] = "Goron City",
    ["pool"] = ER_POOL_TYPES.OW,
    ["exits"] = {
      ["GC Grotto"] = {
        ["setting"] = "setting_entrance_grottos_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Goron City"] = {
        ["child_access"] = function()
          if has("nayrus") and has("magic") then
            return AccessibilityLevel.Normal
          end
          return damage_below_quadruple()
        end,
        ["adult_access"] = function()
          if has("redtunic") or (has("nayrus") and has("magic")) or (has("ocarina") and has("time") and has("longshot")) then
            return AccessibilityLevel.Normal
          end
          return damage_below_quadruple()
        end
      }
    }
  },
  ["GC Shop"] = {
    ["scene"] = "GC Shop",
    ["pool"] = ER_POOL_TYPES.INTERIOR,
    ["locations"] = {
      ["GC Shop Items"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["Goron City"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["DMC Upper Nearby"] = {
    ["scene"] = "Death Mountain Crater",
    ["pool"] = ER_POOL_TYPES.OW,
    ["exits"] = {
      ["DMC Upper Local"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("redtunic") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.SequenceBreak
        end
      },
      ["Death Mountain Summit"] = {
        ["setting"] = "setting_entrance_overworld_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["DMC Upper Grotto"] = {
        ["setting"] = "setting_entrance_grottos_shuffle",
        ["child_access"] = function()
          return has_explosives()
        end,
        ["adult_access"] = function()
          return can_blast()
        end
      }
    }
  },
  ["DMC Upper Local"] = {
    ["scene"] = "Death Mountain Crater",
    ["pool"] = ER_POOL_TYPES.OW,
    ["locations"] = {
      ["DMC Wall Freestanding PoH"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["DMC GS Crate"] = {
        ["child_access"] = function()
          return can_child_attack()
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["DMC Upper Nearby"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["DMC Ladder Area Nearby"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["DMC Central Nearby"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("redtunic") and has("longshot") then
            local nl = (has("nayrus") and has("magic")) and AccessibilityLevel.Normal or AccessibilityLevel.None
            return or_accessibility(damage_single_instance_quadruple(), nl)
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["DMC Ladder Area Nearby"] = {
    ["scene"] = "Death Mountain Crater",
    ["pool"] = ER_POOL_TYPES.OW,
    ["locations"] = {
      ["DMC Deku Scrub"] = {
        ["child_access"] = function()
          if has("nuts") or has("shield1") then
            return AccessibilityLevel.Normal
          end
          return can_child_attack()
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["DMC Upper Nearby"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["DMC Lower Nearby"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("hoverboots") then
            return AccessibilityLevel.Normal
          elseif has("hammer") then
            if has("logic_crater_upper_to_lower") then
              return AccessibilityLevel.Normal
            end
            return AccessibilityLevel.SequenceBreak
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["DMC Lower Nearby"] = {
    ["scene"] = "Death Mountain Crater",
    ["pool"] = ER_POOL_TYPES.OW,
    ["exits"] = {
      ["DMC Lower Local"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("redtunic") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.SequenceBreak
        end
      },
      ["GC Darunias Chamber"] = {
        ["setting"] = "setting_entrance_overworld_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["DMC Great Fairy Fountain"] = {
        ["setting"] = "setting_entrance_interiors_simple",
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("hammer") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["DMC Hammer Grotto"] = {
        ["setting"] = "setting_entrance_grottos_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("hammer") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["DMC Lower Local"] = {
    ["scene"] = "Death Mountain Crater",
    ["pool"] = ER_POOL_TYPES.OW,
    ["exits"] = {
      ["DMC Lower Nearby"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["DMC Ladder Area Nearby"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["DMC Central Nearby"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("hoverboots") or has("hookshot") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["DMC Fire Temple Entrance"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("hoverboots") or has("hookshot") then
            return FTR_or_goron()
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["DMC Central Nearby"] = {
    ["scene"] = "Death Mountain Crater",
    ["pool"] = ER_POOL_TYPES.OW,
    ["locations"] = {
      ["DMC Volcano Freestanding PoH"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Inspect
        end,
        ["adult_access"] = function()
          local hovers = has("hoverboots") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local trick =
            has("logic_crater_bean_poh_with_hovers") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak

          local bean = AccessibilityLevel.None
          if has("beans") then
            bean = access_region("DMC Central Nearby", "child")
          end

          return or_accessibility(bean, and_accessibility(hovers, trick), AccessibilityLevel.Inspect)
        end
      },
      ["Sheik in Crater"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["DMC Central Local"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("redtunic") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.SequenceBreak
        end
      }
    }
  },
  ["DMC Central Local"] = {
    ["scene"] = "Death Mountain Crater",
    ["pool"] = ER_POOL_TYPES.OW,
    ["locations"] = {
      ["DMC GS Bean Patch"] = {
        ["child_access"] = function()
          return and_accessibility(has_bottle(), can_child_attack())
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["DMC Central Nearby"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["DMC Lower Nearby"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("hoverboots") or has("hookshot") then
            return AccessibilityLevel.Normal
          end
          if has("beans") then
            return access_region("DMC Central Local", "child")
          end
          return AccessibilityLevel.None
        end
      },
      ["DMC Upper Nearby"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("beans") then
            return access_region("DMC Central Local", "child")
          end
          return AccessibilityLevel.None
        end
      },
      ["DMC Fire Temple Entrance"] = {
        ["child_access"] = function()
          if has("setting_entrance_dungeons_shuffle") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return FTR_or_goron()
        end
      }
    }
  },
  ["DMC Fire Temple Entrance"] = {
    ["scene"] = "Death Mountain Crater",
    ["pool"] = ER_POOL_TYPES.OW,
    ["exits"] = {
      ["Fire Temple Split"] = {
        ["setting"] = "setting_entrance_dungeons_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["DMC Central Nearby"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("redtunic") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.SequenceBreak
        end
      }
    }
  },
  ["DMC Great Fairy Fountain"] = {
    ["scene"] = "DMC Great Fairy Fountain",
    ["pool"] = ER_POOL_TYPES.INTERIOR,
    ["locations"] = {
      ["DMC Great Fairy Reward"] = {
        ["child_access"] = function()
          if has("ocarina") and has("lullaby") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("ocarina") and has("lullaby") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["DMC Lower Local"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["DMT Great Fairy Fountain"] = {
    ["scene"] = "DMT Great Fairy Fountain",
    ["pool"] = ER_POOL_TYPES.INTERIOR,
    ["locations"] = {
      ["DMT Great Fairy Reward"] = {
        ["child_access"] = function()
          if has("ocarina") and has("lullaby") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("ocarina") and has("lullaby") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["Death Mountain Summit"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["ZR Front"] = {
    ["scene"] = "Zora River",
    ["pool"] = ER_POOL_TYPES.OW,
    ["locations"] = {
      ["ZR GS Tree"] = {
        ["child_access"] = function()
          return can_child_attack()
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["Zora River"] = {
        ["child_access"] = function()
          return has_explosives()
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Hyrule Field"] = {
        ["setting"] = "setting_entrance_overworld_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Zora River"] = {
    ["scene"] = "Zora River",
    ["pool"] = ER_POOL_TYPES.OW,
    ["locations"] = {
      ["ZR Magic Bean Salesman"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["ZR Frogs Ocarina Game"] = {
        ["child_access"] = function()
          if
            has("ocarina") and has("lullaby") and has("saria") and has("epona") and has("sun") and has("time") and
              has("storm")
           then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["ZR Frogs in the Rain"] = {
        ["child_access"] = function()
          if has("ocarina") and has("storm") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["ZR Near Open Grotto Freestanding PoH"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          if has("hoverboots") or has("logic_zora_river_lower") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.SequenceBreak
        end
      },
      ["ZR Near Domain Freestanding PoH"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          if has("hoverboots") or has("logic_zora_river_upper") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.SequenceBreak
        end
      },
      ["ZR GS Ladder"] = {
        ["child_access"] = function()
          return and_accessibility(night_gs(), can_child_attack())
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["ZR GS Near Raised Grottos"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          local collect = has("hookshot") and AccessibilityLevel.Normal or AccessibilityLevel.Inspect
          local kill = has_explosives()
          if has("hookshot") or has("bow") or (has("dinsfire") and has("magic")) then
            kill = AccessibilityLevel.Normal
          end

          return and_accessibility(night_gs(), collect, kill)
        end
      },
      ["ZR GS Above Bridge"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          local collect = has("hookshot") and AccessibilityLevel.Normal or AccessibilityLevel.Inspect
          local kill = has_bombchus()
          if has("hookshot") or has("bow") then
            kill = AccessibilityLevel.Normal
          end

          return and_accessibility(night_gs(), collect, kill)
        end
      }
    },
    ["exits"] = {
      ["ZR Front"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["ZR Open Grotto"] = {
        ["setting"] = "setting_entrance_grottos_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["ZR Fairy Grotto"] = {
        ["setting"] = "setting_entrance_grottos_shuffle",
        ["child_access"] = function()
          return has_explosives()
        end,
        ["adult_access"] = function()
          return can_blast()
        end
      },
      ["Lost Woods"] = {
        ["setting"] = "setting_entrance_overworld_shuffle",
        ["child_access"] = function()
          if has("scale") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("scale") or has("ironboots") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["ZR Storms Grotto"] = {
        ["setting"] = "setting_entrance_grottos_shuffle",
        ["child_access"] = function()
          return can_open_storm_grotto()
        end,
        ["adult_access"] = function()
          return can_open_storm_grotto()
        end
      },
      ["ZR Behind Waterfall"] = {
        ["child_access"] = function()
          if has("ocarina") and has("lullaby") or has("logic_zora_with_cucco") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.SequenceBreak
        end,
        ["adult_access"] = function()
          if has("ocarina") and has("lullaby") then
            return AccessibilityLevel.Normal
          end
          if has("hoverboots") then
            if has("logic_zora_with_hovers") then
              return AccessibilityLevel.Normal
            end
            return AccessibilityLevel.SequenceBreak
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["ZR Behind Waterfall"] = {
    ["scene"] = "Zora River",
    ["pool"] = ER_POOL_TYPES.OW,
    ["exits"] = {
      ["Zora River"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Zoras Domain"] = {
        ["setting"] = "setting_entrance_overworld_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["ZR Top of Waterfall"] = {
    ["scene"] = "Zora River",
    ["pool"] = ER_POOL_TYPES.OW,
    ["exits"] = {
      ["Zora River"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Zoras Domain"] = {
    ["scene"] = "Zoras Domain",
    ["pool"] = ER_POOL_TYPES.OW,
    ["locations"] = {
      ["ZD Diving Minigame"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["ZD Chest"] = {
        ["child_access"] = function()
          if has("sticks") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["ZD King Zora Thawed"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return has_blue_fire()
        end
      },
      ["ZD GS Frozen Waterfall"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("hookshot") or has("bow") or has("magic") or has("logic_domain_gs") then
            return night_gs()
          end
          return AccessibilityLevel.SequenceBreak
        end
      }
    },
    ["exits"] = {
      ["ZR Behind Waterfall"] = {
        ["setting"] = "setting_entrance_overworld_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Lake Hylia"] = {
        ["setting"] = "setting_entrance_overworld_shuffle",
        ["child_access"] = function()
          if has("scale") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["ZD Behind King Zora"] = {
        ["child_access"] = function()
          if has("setting_fountain_open") then
            return AccessibilityLevel.Normal
          end
          return deliver_letter()
        end,
        ["adult_access"] = function()
          if has("setting_fountain_open") or has("setting_fountain_adult") then
            return AccessibilityLevel.Normal
          end
          local trick = has("logic_king_zora_skip") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
          return or_accessibility(deliver_letter(), trick)
        end
      },
      ["ZD Shop"] = {
        ["setting"] = "setting_entrance_interiors_simple",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return has_blue_fire()
        end
      },
      ["ZD Storms Grotto"] = {
        ["setting"] = "setting_entrance_grottos_shuffle",
        ["child_access"] = function()
          return can_open_storm_grotto()
        end,
        ["adult_access"] = function()
          return can_open_storm_grotto()
        end
      }
    }
  },
  ["ZD Behind King Zora"] = {
    ["scene"] = "Zoras Domain",
    ["pool"] = ER_POOL_TYPES.OW,
    ["exits"] = {
      ["Zoras Domain"] = {
        ["child_access"] = function()
          if has("setting_fountain_open") then
            return AccessibilityLevel.Normal
          end
          return deliver_letter()
        end,
        ["adult_access"] = function()
          if has("setting_fountain_open") or has("setting_fountain_adult") then
            return AccessibilityLevel.Normal
          end
          return deliver_letter()
        end
      },
      ["Zoras Fountain"] = {
        ["setting"] = "setting_entrance_overworld_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["ZD Eyeball Frog Timeout"] = {
    ["scene"] = "Zoras Domain",
    ["pool"] = ER_POOL_TYPES.OW,
    ["exits"] = {
      ["Zoras Domain"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Zoras Fountain"] = {
    ["scene"] = "Zoras Fountain",
    ["pool"] = ER_POOL_TYPES.OW,
    ["locations"] = {
      ["ZF Iceberg Freestanding PoH"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["ZF Bottom Freestanding PoH"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("ironboots") then
            return FTR_or_zora()
          end
          return AccessibilityLevel.Inspect
        end
      },
      ["ZF GS Tree"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["ZF GS Above the Log"] = {
        ["child_access"] = function()
          local collect = has("boomerang") and AccessibilityLevel.Normal or AccessibilityLevel.Inspect
          local kill = has_explosives()
          if has("boomerang") or has("sling") or (has("dinsfire") and has("magic")) then
            kill = AccessibilityLevel.Normal
          end

          return and_accessibility(night_gs(), collect, kill)
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["ZF GS Hidden Cave"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          local lift2 = has("lift2") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local kill = has_explosives()
          if has("hookshot") or has("bow") or (has("dinsfire") and has("magic")) then
            kill = AccessibilityLevel.Normal
          end
          local collect = has("hookshot") and AccessibilityLevel.Normal or AccessibilityLevel.Inspect

          return and_accessibility(night_gs(), lift2, can_blast(), kill, collect)
        end
      }
    },
    ["exits"] = {
      ["ZD Behind King Zora"] = {
        ["setting"] = "setting_entrance_overworld_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Jabu Jabus Belly Split"] = {
        ["setting"] = "setting_entrance_dungeons_shuffle",
        ["child_access"] = function()
          return has_bottle()
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["ZF Ice Ledge"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["ZF Great Fairy Fountain"] = {
        ["setting"] = "setting_entrance_interiors_simple",
        ["child_access"] = function()
          return has_explosives()
        end,
        ["adult_access"] = function()
          return has_explosives()
        end
      }
    }
  },
  ["ZF Ice Ledge"] = {
    ["scene"] = "Zoras Fountain",
    ["pool"] = ER_POOL_TYPES.OW,
    ["exits"] = {
      ["Zoras Fountain"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Ice Cavern Split"] = {
        ["setting"] = "setting_entrance_dungeons_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["ZD Shop"] = {
    ["scene"] = "ZD Shop",
    ["pool"] = ER_POOL_TYPES.INTERIOR,
    ["locations"] = {
      ["ZD Shop Items"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["Zoras Domain"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["ZF Great Fairy Fountain"] = {
    ["scene"] = "ZF Great Fairy Fountain",
    ["pool"] = ER_POOL_TYPES.INTERIOR,
    ["locations"] = {
      ["ZF Great Fairy Reward"] = {
        ["child_access"] = function()
          if has("ocarina") and has("lullaby") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("ocarina") and has("lullaby") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["Zoras Fountain"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Lon Lon Ranch"] = {
    ["scene"] = "Lon Lon Ranch",
    ["pool"] = ER_POOL_TYPES.OW,
    ["locations"] = {
      ["Song from Malon"] = {
        ["child_access"] = function()
          if has("postzelda") and has("ocarina") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["LLR GS Tree"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["LLR GS Rain Shed"] = {
        ["child_access"] = function()
          return night_gs()
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["LLR GS House Window"] = {
        ["child_access"] = function()
          local collect = has("boomerang") and AccessibilityLevel.Normal or AccessibilityLevel.Inspect
          local kill = has_bombchus()
          if has("boomerang") or has("sling") then
            kill = AccessibilityLevel.Normal
          end

          return and_accessibility(night_gs(), collect, kill)
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["LLR GS Back Wall"] = {
        ["child_access"] = function()
          local collect = has("boomerang") and AccessibilityLevel.Normal or AccessibilityLevel.Inspect
          local kill = has_explosives()
          if has("boomerang") or has("sling") or (has("dinsfire") and has("magic")) then
            kill = AccessibilityLevel.Normal
          end

          return and_accessibility(night_gs(), collect, kill)
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["Hyrule Field"] = {
        ["setting"] = "setting_entrance_overworld_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["LLR Talons House"] = {
        ["setting"] = "setting_entrance_interiors_simple",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["LLR Stables"] = {
        ["setting"] = "setting_entrance_interiors_simple",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["LLR Tower"] = {
        ["setting"] = "setting_entrance_interiors_simple",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["LLR Grotto"] = {
        ["setting"] = "setting_entrance_grottos_shuffle",
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["LLR Talons House"] = {
    ["scene"] = "LLR Talons House",
    ["pool"] = ER_POOL_TYPES.INTERIOR,
    ["locations"] = {
      ["LLR Talons Chickens"] = {
        ["child_access"] = function()
          if has("postzelda") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["Lon Lon Ranch"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["LLR Stables"] = {
    ["scene"] = "LLR Stables",
    ["pool"] = ER_POOL_TYPES.INTERIOR,
    ["locations"] = {
      ["LLR Stables Cows"] = {
        ["child_access"] = function()
          if has("ocarina") and has("epona") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("ocarina") and has("epona") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["Lon Lon Ranch"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["LLR Tower"] = {
    ["scene"] = "LLR Tower",
    ["pool"] = ER_POOL_TYPES.INTERIOR,
    ["locations"] = {
      ["LLR Freestanding PoH"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Inspect
        end
      },
      ["LLR Tower Cows"] = {
        ["child_access"] = function()
          if has("ocarina") and has("epona") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("ocarina") and has("epona") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["Lon Lon Ranch"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["GF Storms Grotto"] = {
    ["scene"] = "GF Storms Grotto",
    ["pool"] = ER_POOL_TYPES.GROTTO,
    ["exits"] = {
      ["Gerudo Fortress"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["ZD Storms Grotto"] = {
    ["scene"] = "ZD Storms Grotto",
    ["pool"] = ER_POOL_TYPES.GROTTO,
    ["exits"] = {
      ["Zoras Domain"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["KF Storms Grotto"] = {
    ["scene"] = "KF Storms Grotto",
    ["pool"] = ER_POOL_TYPES.GROTTO,
    ["locations"] = {
      ["KF Storms Grotto Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["Kokiri Forest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["LW Near Shortcuts Grotto"] = {
    ["scene"] = "LW Near Shortcuts Grotto",
    ["pool"] = ER_POOL_TYPES.GROTTO,
    ["locations"] = {
      ["LW Near Shortcuts Grotto Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["Lost Woods"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Deku Theater"] = {
    ["scene"] = "Deku Theater",
    ["pool"] = ER_POOL_TYPES.GROTTO,
    ["locations"] = {
      ["Deku Theater Skull Mask"] = {
        ["child_access"] = function()
          if has("skullmask") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["Deku Theater Mask of Truth"] = {
        ["child_access"] = function()
          if has("maskoftruth") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["LW Beyond Mido"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["LW Scrubs Grotto"] = {
    ["scene"] = "LW Scrubs Grotto",
    ["pool"] = ER_POOL_TYPES.GROTTO,
    ["locations"] = {
      ["LW Deku Scrubs Grotto"] = {
        ["child_access"] = function()
          return can_stun_deku()
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["LW Beyond Mido"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["SFM Fairy Grotto"] = {
    ["scene"] = "SFM Fairy Grotto",
    ["pool"] = ER_POOL_TYPES.GROTTO,
    ["exits"] = {
      ["Sacred Forest Meadow"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["SFM Storms Grotto"] = {
    ["scene"] = "SFM Storms Grotto",
    ["pool"] = ER_POOL_TYPES.GROTTO,
    ["locations"] = {
      ["SFM Deku Scrubs Grotto"] = {
        ["child_access"] = function()
          return can_stun_deku()
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["Sacred Forest Meadow"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["SFM Wolfos Grotto"] = {
    ["scene"] = "SFM Wolfos Grotto",
    ["pool"] = ER_POOL_TYPES.GROTTO,
    ["locations"] = {
      ["SFM Wolfos Grotto Chest"] = {
        ["child_access"] = function()
          if has("sling") or has("sticks") or has("sword1") or (has("dinsfire") and has("magic")) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["SFM Entryway"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["LLR Grotto"] = {
    ["scene"] = "LLR Grotto",
    ["pool"] = ER_POOL_TYPES.GROTTO,
    ["locations"] = {
      ["LLR Deku Scrubs Grotto"] = {
        ["child_access"] = function()
          return can_stun_deku()
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["Lon Lon Ranch"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["HF Southeast Grotto"] = {
    ["scene"] = "HF Southeast Grotto",
    ["pool"] = ER_POOL_TYPES.GROTTO,
    ["locations"] = {
      ["HF Southeast Grotto Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["Hyrule Field"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["HF Open Grotto"] = {
    ["scene"] = "HF Open Grotto",
    ["pool"] = ER_POOL_TYPES.GROTTO,
    ["locations"] = {
      ["HF Open Grotto Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["Hyrule Field"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["HF Inside Fence Grotto"] = {
    ["scene"] = "HF Inside Fence Grotto",
    ["pool"] = ER_POOL_TYPES.GROTTO,
    ["locations"] = {
      ["HF Deku Scrub Grotto"] = {
        ["child_access"] = function()
          return can_stun_deku()
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["Hyrule Field"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["HF Cow Grotto"] = {
    ["scene"] = "HF Cow Grotto",
    ["pool"] = ER_POOL_TYPES.GROTTO,
    ["locations"] = {
      ["HF GS Cow Grotto"] = {
        ["child_access"] = function()
          if has("dinsfire") and has("magic") then
            if has("boomerang") then
              return AccessibilityLevel.Normal
            end
            return AccessibilityLevel.Inspect
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          local hs = has("hookshot") and AccessibilityLevel.Normal or AccessibilityLevel.Inspect
          return and_accessibility(has_fire(), hs)
        end
      },
      ["HF Cow Grotto Cow"] = {
        ["child_access"] = function()
          if has("ocarina") and has("epona") and has("dinsfire") and has("magic") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("ocarina") and has("epona") then
            return has_fire()
          end
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["Hyrule Field"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["HF Near Market Grotto"] = {
    ["scene"] = "HF Near Market Grotto",
    ["pool"] = ER_POOL_TYPES.GROTTO,
    ["locations"] = {
      ["HF Near Market Grotto Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["Hyrule Field"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["HF Fairy Grotto"] = {
    ["scene"] = "HF Fairy Grotto",
    ["pool"] = ER_POOL_TYPES.GROTTO,
    ["exits"] = {
      ["Hyrule Field"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["HF Near Kak Grotto"] = {
    ["scene"] = "HF Near Kak Grotto",
    ["pool"] = ER_POOL_TYPES.GROTTO,
    ["locations"] = {
      ["HF GS Near Kak Grotto"] = {
        ["child_access"] = function()
          local collect = has("boomerang") and AccessibilityLevel.Normal or AccessibilityLevel.Inspect
          local kill = has_explosives()
          if has("boomerang") or has("sling") or (has("dinsfire") and has("magic")) then
            kill = AccessibilityLevel.Normal
          end

          return and_accessibility(collect, kill)
        end,
        ["adult_access"] = function()
          local collect = has("hookshot") and AccessibilityLevel.Normal or AccessibilityLevel.Inspect
          local kill = has_explosives()
          if has("hookshot") or has("bow") or (has("dinsfire") and has("magic")) then
            kill = AccessibilityLevel.Normal
          end

          return and_accessibility(collect, kill)
        end
      }
    },
    ["exits"] = {
      ["Hyrule Field"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["HF Tektite Grotto"] = {
    ["scene"] = "HF Tektite Grotto",
    ["pool"] = ER_POOL_TYPES.GROTTO,
    ["locations"] = {
      ["HF Tektite Grotto Freestanding PoH"] = {
        ["child_access"] = function()
          if has("scale2") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.Inspect
        end,
        ["adult_access"] = function()
          if has("scale2") or has("ironboots") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.Inspect
        end
      }
    },
    ["exits"] = {
      ["Hyrule Field"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["HC Storms Grotto"] = {
    ["scene"] = "HC Storms Grotto",
    ["pool"] = ER_POOL_TYPES.GROTTO,
    ["locations"] = {
      ["HC GS Storms Grotto"] = {
        ["child_access"] = function()
          local rang = has("boomerang") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local trick = has("logic_castle_storms_gs") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
          local kill = has_explosives()
          if has("sticks") or (has("dinsfire") and has("magic")) then
            kill = AccessibilityLevel.Normal
          end

          return or_accessibility(
            and_accessibility(rang, or_accessibility(has_explosives(), trick)),
            and_accessibility(kill, AccessibilityLevel.Inspect)
          )
        end,
        ["adult_access"] = function()
          --TODO: irrelevant inspect logic
          if has("hookshot") then
            return can_blast()
          end
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["Castle Grounds"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Kak Redead Grotto"] = {
    ["scene"] = "Kak Redead Grotto",
    ["pool"] = ER_POOL_TYPES.GROTTO,
    ["locations"] = {
      ["Kak Redead Grotto Chest"] = {
        ["child_access"] = function()
          if has("sticks") or has("sword1") or (has("dinsfire") and has("magic")) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["Kakariko Village"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Kak Open Grotto"] = {
    ["scene"] = "Kak Open Grotto",
    ["pool"] = ER_POOL_TYPES.GROTTO,
    ["locations"] = {
      ["Kak Open Grotto Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["Kak Backyard"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["DMT Cow Grotto"] = {
    ["scene"] = "DMT Cow Grotto",
    ["pool"] = ER_POOL_TYPES.GROTTO,
    ["locations"] = {
      ["DMT Cow Grotto Cow"] = {
        ["child_access"] = function()
          if has("ocarina") and has("epona") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("ocarina") and has("epona") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["Death Mountain Summit"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["DMT Storms Grotto"] = {
    ["scene"] = "DMT Storms Grotto",
    ["pool"] = ER_POOL_TYPES.GROTTO,
    ["locations"] = {
      ["DMT Storms Grotto Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["Death Mountain"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["GC Grotto"] = {
    ["scene"] = "GC Grotto",
    ["pool"] = ER_POOL_TYPES.GROTTO,
    ["locations"] = {
      ["GC Deku Scrubs Grotto"] = {
        ["child_access"] = function()
          return can_stun_deku()
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["GC Grotto Platform"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["DMC Upper Grotto"] = {
    ["scene"] = "DMC Upper Grotto",
    ["pool"] = ER_POOL_TYPES.GROTTO,
    ["locations"] = {
      ["DMC Upper Grotto Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["DMC Upper Local"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["DMC Hammer Grotto"] = {
    ["scene"] = "DMC Hammer Grotto",
    ["pool"] = ER_POOL_TYPES.GROTTO,
    ["locations"] = {
      ["DMC Deku Scrubs Grotto"] = {
        ["child_access"] = function()
          return can_stun_deku()
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["DMC Lower Local"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["ZR Open Grotto"] = {
    ["scene"] = "ZR Open Grotto",
    ["pool"] = ER_POOL_TYPES.GROTTO,
    ["locations"] = {
      ["ZR Open Grotto Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["Zora River"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["ZR Fairy Grotto"] = {
    ["scene"] = "ZR Fairy Grotto",
    ["pool"] = ER_POOL_TYPES.GROTTO,
    ["exits"] = {
      ["Zora River"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["ZR Storms Grotto"] = {
    ["scene"] = "ZR Storms Grotto",
    ["pool"] = ER_POOL_TYPES.GROTTO,
    ["locations"] = {
      ["ZR Deku Scrubs Grotto"] = {
        ["child_access"] = function()
          return can_stun_deku()
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["Zora River"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["LH Grotto"] = {
    ["scene"] = "LH Grotto",
    ["pool"] = ER_POOL_TYPES.GROTTO,
    ["locations"] = {
      ["LH Deku Scrubs Grotto"] = {
        ["child_access"] = function()
          return can_stun_deku()
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["Lake Hylia"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Colossus Grotto"] = {
    ["scene"] = "Colossus Grotto",
    ["pool"] = ER_POOL_TYPES.GROTTO,
    ["locations"] = {
      ["Colossus Deku Scrubs Grotto"] = {
        ["child_access"] = function()
          return can_stun_deku()
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["Desert Colossus"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["GV Octorok Grotto"] = {
    ["scene"] = "GV Octorok Grotto",
    ["pool"] = ER_POOL_TYPES.GROTTO,
    ["exits"] = {
      ["GV Grotto Ledge"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["GV Storms Grotto"] = {
    ["scene"] = "GV Storms Grotto",
    ["pool"] = ER_POOL_TYPES.GROTTO,
    ["locations"] = {
      ["GV Deku Scrubs Grotto"] = {
        ["child_access"] = function()
          return can_stun_deku()
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["GV Fortress Side"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Bottom of the Well Split"] = {
    ["scene"] = "Bottom of the Well",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["exits"] = {
      ["Bottom of the Well"] = {
        ["child_access"] = function()
          if has("botw_reg") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("botw_reg") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["Bottom of the Well MQ"] = {
        ["child_access"] = function()
          if has("botw_mq") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("botw_mq") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Bottom of the Well"] = {
    ["scene"] = "Bottom of the Well",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["exits"] = {
      ["Kakariko Village"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Bottom of the Well Main Area"] = {
        ["child_access"] = function()
          if has("nuts") then
            return AccessibilityLevel.Normal
          end
          return can_child_attack()
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Bottom of the Well Main Area"] = {
    ["scene"] = "Bottom of the Well",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Bottom of the Well Front Left Fake Wall Chest"] = {
        ["child_access"] = function()
          if has("logic_lens_botw") or (has("lens") and has("magic")) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.SequenceBreak
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["Bottom of the Well Front Center Bombable Chest"] = {
        ["child_access"] = function()
          return has_explosives()
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["Bottom of the Well Right Bottom Fake Wall Chest"] = {
        ["child_access"] = function()
          if has("logic_lens_botw") or (has("lens") and has("magic")) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.SequenceBreak
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["Bottom of the Well Compass Chest"] = {
        ["child_access"] = function()
          if has("logic_lens_botw") or (has("lens") and has("magic")) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.SequenceBreak
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["Bottom of the Well Center Skulltula Chest"] = {
        ["child_access"] = function()
          if has("logic_lens_botw") or (has("lens") and has("magic")) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.SequenceBreak
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["Bottom of the Well Back Left Bombable Chest"] = {
        ["child_access"] = function()
          local lens =
            (has("logic_lens_botw") or (has("lens") and has("magic"))) and AccessibilityLevel.Normal or
            AccessibilityLevel.SequenceBreak
          return and_accessibility(has_explosives(), lens)
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["Bottom of the Well Freestanding Key"] = {
        ["child_access"] = function()
          if has("sticks") or (has("dinsfire") and has("magic")) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["Bottom of the Well Lens of Truth Chest"] = {
        ["child_access"] = function()
          if has("ocarina") and has("lullaby") then
            if has("sword1") then
              return AccessibilityLevel.Normal
            end
            if has("sticks") then
              if has("logic_child_deadhand") then
                return AccessibilityLevel.Normal
              end
              return AccessibilityLevel.SequenceBreak
            end
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["Bottom of the Well Invisible Chest"] = {
        ["child_access"] = function()
          if has("ocarina") and has("lullaby") then
            if has("logic_lens_botw") or (has("lens") and has("magic")) then
              return AccessibilityLevel.Normal
            end
            return AccessibilityLevel.SequenceBreak
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["Bottom of the Well Underwater Front Chest"] = {
        ["child_access"] = function()
          if has("ocarina") and has("lullaby") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["Bottom of the Well Underwater Left Chest"] = {
        ["child_access"] = function()
          if has("ocarina") and has("lullaby") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["Bottom of the Well Map Chest"] = {
        ["child_access"] = function()
          local lift = has("lift") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local keys = AccessibilityLevel.None
          if has("botw_small_keys", 3) then
            keys = AccessibilityLevel.Normal
          elseif has("botw_small_keys", 1) then
            keys = AccessibilityLevel.SequenceBreak
          end
          local lens =
            (has("logic_lens_botw") or (has("lens") and has("magic"))) and AccessibilityLevel.Normal or
            AccessibilityLevel.SequenceBreak
          local df = (has("dinsfire") and has("magic")) and AccessibilityLevel.Normal or AccessibilityLevel.None
          local trick = AccessibilityLevel.None
          if has("sticks") then
            if has("logic_botw_basement") then
              trick = AccessibilityLevel.Normal
            else
              trick = AccessibilityLevel.SequenceBreak
            end
          end

          return or_accessibility(
            has_explosives(),
            and_accessibility(lift, or_accessibility(and_accessibility(keys, lens), df, trick))
          )
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["Bottom of the Well Fire Keese Chest"] = {
        ["child_access"] = function()
          local keys = AccessibilityLevel.None
          if has("botw_small_keys", 3) then
            keys = AccessibilityLevel.Normal
          elseif has("botw_small_keys", 1) then
            keys = AccessibilityLevel.SequenceBreak
          end
          local lens =
            (has("logic_lens_botw") or (has("lens") and has("magic"))) and AccessibilityLevel.Normal or
            AccessibilityLevel.SequenceBreak

          return and_accessibility(keys, lens)
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["Bottom of the Well Like Like Chest"] = {
        ["child_access"] = function()
          local keys = AccessibilityLevel.None
          if has("botw_small_keys", 3) then
            keys = AccessibilityLevel.Normal
          elseif has("botw_small_keys", 1) then
            keys = AccessibilityLevel.SequenceBreak
          end
          local lens =
            (has("logic_lens_botw") or (has("lens") and has("magic"))) and AccessibilityLevel.Normal or
            AccessibilityLevel.SequenceBreak

          return and_accessibility(keys, lens)
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["Bottom of the Well GS West Inner Room"] = {
        ["child_access"] = function()
          local rang = has("boomerang") and AccessibilityLevel.Normal or AccessibilityLevel.Inspect
          local keys = AccessibilityLevel.None
          if has("botw_small_keys", 3) then
            keys = AccessibilityLevel.Normal
          elseif has("botw_small_keys", 1) then
            keys = AccessibilityLevel.SequenceBreak
          end
          local lens =
            (has("logic_lens_botw") or (has("lens") and has("magic"))) and AccessibilityLevel.Normal or
            AccessibilityLevel.SequenceBreak

          return and_accessibility(rang, lens, keys)
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["Bottom of the Well GS East Inner Room"] = {
        ["child_access"] = function()
          local rang = has("boomerang") and AccessibilityLevel.Normal or AccessibilityLevel.Inspect
          local keys = AccessibilityLevel.None
          if has("botw_small_keys", 3) then
            keys = AccessibilityLevel.Normal
          elseif has("botw_small_keys", 1) then
            keys = AccessibilityLevel.SequenceBreak
          end
          local lens =
            (has("logic_lens_botw") or (has("lens") and has("magic"))) and AccessibilityLevel.Normal or
            AccessibilityLevel.SequenceBreak

          return and_accessibility(rang, lens, keys)
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["Bottom of the Well GS Like Like Cage"] = {
        ["child_access"] = function()
          local rang = has("boomerang") and AccessibilityLevel.Normal or AccessibilityLevel.Inspect
          local keys = AccessibilityLevel.None
          if has("botw_small_keys", 3) then
            keys = AccessibilityLevel.Normal
          elseif has("botw_small_keys", 1) then
            keys = AccessibilityLevel.SequenceBreak
          end
          local lens =
            (has("logic_lens_botw") or (has("lens") and has("magic"))) and AccessibilityLevel.Normal or
            AccessibilityLevel.SequenceBreak

          return and_accessibility(rang, lens, keys)
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["Bottom of the Well"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Bottom of the Well MQ"] = {
    ["scene"] = "Bottom of the Well",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["exits"] = {
      ["Kakariko Village"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Bottom of the Well MQ Perimeter"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Bottom of the Well MQ Perimeter"] = {
    ["scene"] = "Bottom of the Well",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Bottom of the Well MQ Compass Chest"] = {
        ["child_access"] = function()
          if has("sword1") then
            return AccessibilityLevel.Normal
          end
          if has("sticks") then
            if has("logic_child_deadhand") then
              return AccessibilityLevel.Normal
            end
            return AccessibilityLevel.SequenceBreak
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["Bottom of the Well MQ Dead Hand Freestanding Key"] = {
        ["child_access"] = function()
          local trick = AccessibilityLevel.None
          if has("boomerang") then
            if has("logic_botw_mq_dead_hand_key") then
              trick = AccessibilityLevel.Normal
            else
              trick = AccessibilityLevel.SequenceBreak
            end
          end
          return or_accessibility(has_explosives(), trick)
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["Bottom of the Well MQ GS Basement"] = {
        ["child_access"] = function()
          return can_child_attack()
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["Bottom of the Well MQ GS Coffin Room"] = {
        ["child_access"] = function()
          local keys = AccessibilityLevel.None
          if has("botw_small_keys", 2) then
            keys = AccessibilityLevel.Normal
          elseif has("botw_small_keys", 1) then
            keys = AccessibilityLevel.SequenceBreak
          end
          return and_accessibility(can_child_attack(), keys)
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["Bottom of the Well MQ"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Bottom of the Well MQ Middle"] = {
        ["child_access"] = function()
          if has("ocarina") and has("lullaby") then
            return AccessibilityLevel.Normal
          end
          local trick = has("logic_botw_mq_pits") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
          return and_accessibility(trick, has_explosives())
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Bottom of the Well MQ Middle"] = {
    ["scene"] = "Bottom of the Well",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Bottom of the Well MQ Map Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["Bottom of the Well MQ Lens of Truth Chest"] = {
        ["child_access"] = function()
          local keys = AccessibilityLevel.None
          if has("botw_small_keys", 2) then
            keys = AccessibilityLevel.Normal
          elseif has("botw_small_keys", 1) then
            keys = AccessibilityLevel.SequenceBreak
          end
          return and_accessibility(has_explosives(), keys)
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["Bottom of the Well MQ East Inner Room Freestanding Key"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["Bottom of the Well MQ GS West Inner Room"] = {
        ["child_access"] = function()
          local trick = has("logic_botw_mq_pits") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
          return and_accessibility(can_child_attack(), or_accessibility(trick, has_explosives()))
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["Bottom of the Well MQ Perimeter"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Deku Tree Split"] = {
    ["scene"] = "Deku Tree",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["exits"] = {
      ["Deku Tree Lobby"] = {
        ["child_access"] = function()
          if has("deku_reg") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("deku_reg") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["Deku Tree MQ Lobby"] = {
        ["child_access"] = function()
          if has("deku_mq") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("deku_mq") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Deku Tree Lobby"] = {
    ["scene"] = "Deku Tree",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Deku Tree Map Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Deku Tree Compass Room Chests"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Deku Tree Basement Chest"] = {
        ["child_access"] = function()
          if has("nuts") then
            return AccessibilityLevel.Normal
          end
          return can_child_attack()
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Deku Tree GS Compass Room"] = {
        ["child_access"] = function()
          return can_child_attack()
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Deku Tree GS Basement Vines"] = {
        ["child_access"] = function()
          local df = (has("dinsfire") and has("magic")) and AccessibilityLevel.Normal or AccessibilityLevel.None
          local trick = has("logic_deku_basement_gs") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
          local weapon = (has("sticks") or has("sword1")) and AccessibilityLevel.Normal or AccessibilityLevel.None

          return or_accessibility(has_projectile("child"), df, and_accessibility(trick, weapon))
        end,
        ["adult_access"] = function()
          local df = (has("dinsfire") and has("magic")) and AccessibilityLevel.Normal or AccessibilityLevel.None
          local trick = has("logic_deku_basement_gs") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak

          return or_accessibility(has_projectile("adult"), df, trick)
        end
      },
      ["Deku Tree GS Basement Gate"] = {
        ["child_access"] = function()
          return can_child_attack()
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["KF Outside Deku Tree"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Deku Tree Slingshot Room"] = {
        ["child_access"] = function()
          if has("shield1") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("shield2") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["Deku Tree Basement Backroom"] = {
        ["child_access"] = function()
          local sticks = has("sticks") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local df = (has("dinsfire") and has("magic")) and AccessibilityLevel.Normal or AccessibilityLevel.None
          local sling = has("slingshot") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local bow = has("bow") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local trick = has("logic_deku_b1_skip") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
          local adult = access_region("Deku Tree Lobby", "adult")

          return or_accessibility(
            and_accessibility(
              or_accessibility(sticks, df, and_accessibility(adult, bow)),
              or_accessibility(sling, and_accessibility(adult, bow))
            ),
            or_accessibility(trick, adult)
          )
        end,
        ["adult_access"] = function()
          local sticks = has("sticks") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local df = (has("dinsfire") and has("magic")) and AccessibilityLevel.Normal or AccessibilityLevel.None
          local sling = has("slingshot") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local bow = has("bow") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local child = access_region("Deku Tree Lobby", "child")

          return and_accessibility(
            or_accessibility(and_accessibility(child, sticks), df, bow),
            or_accessibility(and_accessibility(child, sling), bow)
          )
        end
      },
      ["Deku Tree Boss Room"] = {
        ["child_access"] = function()
          local sticks = has("sticks") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local df = (has("dinsfire") and has("magic")) and AccessibilityLevel.Normal or AccessibilityLevel.None
          local fa =
            (has("magic") and has("bow") and has("firearrow")) and AccessibilityLevel.Normal or AccessibilityLevel.None
          local sling = has("slingshot") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local bow = has("bow") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local trick_web =
            has("logic_deku_b1_webs_with_bow") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
          local trick_ledge =
            has("logic_deku_b1_skip") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
          local adult = access_region("Deku Tree Lobby", "adult")

          return and_accessibility(
            or_accessibility(
              sticks,
              df,
              and_accessibility(adult, or_accessibility(fa, and_accessibility(trick_web, bow)))
            ),
            or_accessibility(trick_ledge, adult, sling)
          )
        end,
        ["adult_access"] = function()
          local sticks = has("sticks") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local df = (has("dinsfire") and has("magic")) and AccessibilityLevel.Normal or AccessibilityLevel.None
          local fa =
            (has("magic") and has("bow") and has("firearrow")) and AccessibilityLevel.Normal or AccessibilityLevel.None
          local bow = has("bow") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local trick_web =
            has("logic_deku_b1_webs_with_bow") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
          local child = access_region("Deku Tree Lobby", "child")

          return or_accessibility(and_accessibility(child, sticks), df, fa, and_accessibility(trick_web, bow))
        end
      }
    }
  },
  ["Deku Tree Slingshot Room"] = {
    ["scene"] = "Deku Tree",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Deku Tree Slingshot Room Chests"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["Deku Tree Lobby"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Deku Tree Basement Backroom"] = {
    ["scene"] = "Deku Tree",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Deku Tree GS Basement Back Room"] = {
        ["child_access"] = function()
          local rang = has("boomerang") and AccessibilityLevel.Normal or AccessibilityLevel.Inspect
          local fire =
            (has("sticks") or (has("dinsfire") and has("magic"))) and AccessibilityLevel.Normal or
            AccessibilityLevel.None
          local adult = access_region("Deku Tree Basement Backroom", "adult")
          local bow = has("bow") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local hammer = has("hammer") and AccessibilityLevel.Normal or AccessibilityLevel.None

          return and_accessibility(
            rang,
            or_accessibility(fire, and_accessibility(adult, bow)),
            or_accessibility(has_explosives(), and_accessibility(adult, hammer))
          )
        end,
        ["adult_access"] = function()
          local hs = has("hookshot") and AccessibilityLevel.Normal or AccessibilityLevel.Inspect
          local df = (has("dinsfire") and has("magic")) and AccessibilityLevel.Normal or AccessibilityLevel.None
          local sticks = has("sticks") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local child = access_region("Deku Tree Basement Backroom", "child")
          local bow = has("bow") and AccessibilityLevel.Normal or AccessibilityLevel.None

          return and_accessibility(hs, or_accessibility(df, bow, and_accessibility(sticks, child)), can_blast())
        end
      }
    },
    ["exits"] = {
      ["Deku Tree Lobby"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Deku Tree Boss Room"] = {
    ["scene"] = "Deku Tree",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Queen Gohma"] = {
        ["child_access"] = function()
          if has("shield1") and (has("sword1") or has("sticks")) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("shield2") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["Deku Tree Lobby"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Deku Tree MQ Lobby"] = {
    ["scene"] = "Deku Tree",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Deku Tree MQ Map Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Deku Tree MQ Slingshot Chest"] = {
        ["child_access"] = function()
          return can_child_attack()
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Deku Tree MQ Slingshot Room Back Chest"] = {
        ["child_access"] = function()
          if has("sticks") or (has("dinsfire") and has("magic")) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("bow") or (has("dinsfire") and has("magic")) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["Deku Tree MQ Basement Chest"] = {
        ["child_access"] = function()
          if has("sticks") or (has("dinsfire") and has("magic")) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("bow") or (has("dinsfire") and has("magic")) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["Deku Tree MQ GS Lobby"] = {
        ["child_access"] = function()
          return can_child_attack()
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["KF Outside Deku Tree"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Deku Tree MQ Compass Room"] = {
        ["child_access"] = function()
          local adult = access_region("Deku Tree MQ Lobby", "adult")

          local eye = AccessibilityLevel.None
          if has("sling") then
            eye = AccessibilityLevel.Normal
          elseif has("bow") then
            eye = adult
          end

          local web = AccessibilityLevel.None
          if has("sticks") or (has("dinsfire") and has("magic")) then
            web = AccessibilityLevel.Normal
          elseif has("bow") then
            web = adult
          end

          return and_accessibility(eye, web)
        end,
        ["adult_access"] = function()
          if has("bow") then
            return AccessibilityLevel.Normal
          end

          local child = access_region("Deku Tree MQ Lobby", "child")

          local eye = AccessibilityLevel.None
          if has("sling") then
            eye = child
          end

          local web = AccessibilityLevel.None
          if has("dinsfire") and has("magic") then
            web = AccessibilityLevel.Normal
          elseif has("sticks") then
            web = child
          end

          return and_accessibility(eye, web)
        end
      },
      ["Deku Tree MQ Basement Water Room Front"] = {
        ["child_access"] = function()
          local adult = access_region("Deku Tree MQ Lobby", "adult")

          local eye = AccessibilityLevel.None
          if has("sling") then
            eye = AccessibilityLevel.Normal
          elseif has("bow") then
            eye = adult
          end

          local web = AccessibilityLevel.None
          if has("sticks") or (has("dinsfire") and has("magic")) then
            web = AccessibilityLevel.Normal
          elseif has("bow") and has("firearrow") and has("magic") then
            web = adult
          end

          return and_accessibility(eye, web)
        end,
        ["adult_access"] = function()
          local child = access_region("Deku Tree MQ Lobby", "child")

          local eye = AccessibilityLevel.None
          if has("bow") then
            eye = AccessibilityLevel.Normal
          elseif has("sling") then
            eye = child
          end

          local web = AccessibilityLevel.None
          if (has("dinsfire") and has("magic")) or (has("bow") and has("firearrow") and has("magic")) then
            web = AccessibilityLevel.Normal
          elseif has("sticks") then
            web = child
          end

          return and_accessibility(eye, web)
        end
      },
      ["Deku Tree MQ Basement Ledge"] = {
        ["child_access"] = function()
          if has("logic_deku_b1_skip") or (access_region("Deku Tree MQ Lobby", "adult") == AccessibilityLevel.Normal) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.SequenceBreak
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Deku Tree MQ Compass Room"] = {
    ["scene"] = "Deku Tree",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Deku Tree MQ Compass Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Deku Tree MQ GS Compass Room"] = {
        ["child_access"] = function()
          if has("boomerang") then
            local bombs = has("bombs") and AccessibilityLevel.Normal or AccessibilityLevel.None
            local sot = (has("ocarina") and has("time")) and AccessibilityLevel.Normal or AccessibilityLevel.None
            local hammer = has("hammer") and AccessibilityLevel.Normal or AccessibilityLevel.None
            local adult = access_region("Deku Tree MQ Compass Room", "adult")
            local trick =
              has("logic_deku_mq_compass_gs") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak

            return or_accessibility(
              has_bombchus(),
              and_accessibility(bombs, or_accessibility(sot, adult)),
              and_accessibility(adult, hammer, or_accessibility(sot, trick))
            )
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("hookshot") then
            local bombs = has("bombs") and AccessibilityLevel.Normal or AccessibilityLevel.None
            local sot = (has("ocarina") and has("time")) and AccessibilityLevel.Normal or AccessibilityLevel.None
            local hammer = has("hammer") and AccessibilityLevel.Normal or AccessibilityLevel.None
            local trick =
              has("logic_deku_mq_compass_gs") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak

            return or_accessibility(has_bombchus(), bombs, and_accessibility(hammer, or_accessibility(sot, trick)))
          end
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["Deku Tree MQ Lobby"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Deku Tree MQ Basement Water Room Front"] = {
    ["scene"] = "Deku Tree",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Deku Tree MQ Before Spinning Log Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["Deku Tree MQ Basement Water Room Back"] = {
        ["child_access"] = function()
          if has("logic_deku_mq_log") or has("shield1") or has("shield2") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.SequenceBreak
        end,
        ["adult_access"] = function()
          if has("logic_deku_mq_log") or has("longshot") or (has("hookshot") and has("ironboots")) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.SequenceBreak
        end
      },
      ["Deku Tree MQ Lobby"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Deku Tree MQ Basement Water Room Back"] = {
    ["scene"] = "Deku Tree",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Deku Tree MQ After Spinning Log Chest"] = {
        ["child_access"] = function()
          if has("ocarina") and has("time") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("ocarina") and has("time") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["Deku Tree MQ Basement Back Room"] = {
        ["child_access"] = function()
          local fire = AccessibilityLevel.None
          if has("sticks") or (has("dinsfire") and has("magic")) then
            fire = AccessibilityLevel.Normal
          elseif has("bow") and has("firearrow") and has("magic") then
            fire = access_region("Deku Tree MQ Basement Water Room Front", "adult")
          end

          if has("sword1") or (has("nuts") and has("sticks")) then
            return fire
          end

          local adult = access_region("Deku Tree MQ Basement Water Room Back", "adult")
          return and_accessibility(fire, or_accessibility(adult, has_projectile("child")))
        end,
        ["adult_access"] = function()
          if (has("dinsfire") and has("magic")) or (has("bow") and has("firearrow") and has("magic")) then
            return AccessibilityLevel.Normal
          elseif has("sticks") then
            return access_region("Deku Tree MQ Basement Water Room Back", "child")
          end
          return AccessibilityLevel.None
        end
      },
      ["Deku Tree MQ Basement Water Room Front"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Deku Tree MQ Basement Back Room"] = {
    ["scene"] = "Deku Tree",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Deku Tree MQ GS Basement Graves Room"] = {
        ["child_access"] = function()
          if has("time") and has("boomerang") then
            return AccessibilityLevel.Normal
          end
          if has("sling") then
            return AccessibilityLevel.Inspect
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("longshot") or (has("time") and has("hookshot")) then
            return AccessibilityLevel.Normal
          end
          if has("bow") then
            return AccessibilityLevel.Inspect
          end
          return AccessibilityLevel.None
        end
      },
      ["Deku Tree MQ GS Basement Back Room"] = {
        ["child_access"] = function()
          local rang = has("boomerang") and AccessibilityLevel.Normal or AccessibilityLevel.Inspect
          local fire =
            (has("sticks") or (has("dinsfire") and has("magic"))) and AccessibilityLevel.Normal or
            AccessibilityLevel.None
          local fa =
            (has("bow") and has("firearrow") and has("magic")) and AccessibilityLevel.Normal or AccessibilityLevel.None

          return and_accessibility(
            rang,
            or_accessibility(fire, and_accessibility(fa, access_region("Deku Tree MQ Basement Back Room", "adult")))
          )
        end,
        ["adult_access"] = function()
          local hs = has("hookshot") and AccessibilityLevel.Normal or AccessibilityLevel.Inspect
          local fire =
            ((has("dinsfire") and has("magic")) or (has("bow") and has("firearrow") and has("magic"))) and
            AccessibilityLevel.Normal or
            AccessibilityLevel.None
          local sticks = has("sticks") and AccessibilityLevel.Normal or AccessibilityLevel.None

          return and_accessibility(
            hs,
            or_accessibility(fire, and_accessibility(sticks, access_region("Deku Tree MQ Basement Back Room", "child")))
          )
        end
      }
    },
    ["exits"] = {
      ["Deku Tree MQ Basement Ledge"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["Deku Tree MQ Basement Water Room Back"] = {
        ["child_access"] = function()
          if has("sword1") or (has("nuts") and has("sticks")) then
            return AccessibilityLevel.Normal
          end
          return has_projectile("child")
        end,
        ["adult_access"] = function()
          return has_projectile("adult")
        end
      }
    }
  },
  ["Deku Tree MQ Basement Ledge"] = {
    ["scene"] = "Deku Tree",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Deku Tree MQ Deku Scrub"] = {
        ["child_access"] = function()
          if has("nuts") or has("shield1") then
            return AccessibilityLevel.Normal
          end
          return can_child_attack()
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Queen Gohma"] = {
        ["child_access"] = function()
          if has("shield1") and (has("sword1") or has("sticks")) then
            if has("sticks") or (has("dinsfire") and has("magic")) then
              return AccessibilityLevel.Normal
            elseif has("bow") and has("firearrow") and has("magic") then
              return access_region("Deku Tree MQ Basement Ledge", "adult")
            end
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("shield2") then
            if (has("dinsfire") and has("magic")) or (has("bow") and has("firearrow") and has("magic")) then
              return AccessibilityLevel.Normal
            elseif has("sticks") then
              return access_region("Deku Tree MQ Basement Ledge", "child")
            end
          end
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["Deku Tree MQ Basement Back Room"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["Deku Tree MQ Lobby"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Dodongos Cavern Split"] = {
    ["scene"] = "Dodongos Cavern",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["exits"] = {
      ["Dodongos Cavern Beginning"] = {
        ["child_access"] = function()
          if has("dodongo_reg") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("dodongo_reg") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["Dodongos Cavern MQ Beginning"] = {
        ["child_access"] = function()
          if has("dodongo_mq") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("dodongo_mq") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Dodongos Cavern Beginning"] = {
    ["scene"] = "Dodongos Cavern",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["exits"] = {
      ["Death Mountain"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Dodongos Cavern Lobby"] = {
        ["child_access"] = function()
          if has("lift1") then
            return AccessibilityLevel.Normal
          end

          local hammer = has("hammer") and AccessibilityLevel.Normal or AccessibilityLevel.None
          return or_accessibility(
            has_explosives(),
            and_accessibility(hammer, access_region("Dodongos Cavern Beginning", "adult"))
          )
        end,
        ["adult_access"] = function()
          if has("lift1") then
            return AccessibilityLevel.Normal
          end
          return can_blast()
        end
      }
    }
  },
  ["Dodongos Cavern Lobby"] = {
    ["scene"] = "Dodongos Cavern",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Dodongos Cavern Map Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Dodongos Cavern GS Side Room Near Lower Lizalfos"] = {
        ["child_access"] = function()
          if has("sling") or has("boomerang") or has("sticks") or has("sword1") then
            return AccessibilityLevel.Normal
          end
          return has_explosives()
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Dodongos Cavern GS Scarecrow"] = {
        ["child_access"] = function()
          local trick = has("logic_dc_scarecrow_gs") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
          return and_accessibility(trick, can_child_attack())
        end,
        ["adult_access"] = function()
          local ls = has("longshot") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local trick = has("logic_dc_scarecrow_gs") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
          return or_accessibility(can_use_scarecrow(), ls, trick)
        end
      },
      ["Dodongos Cavern Deku Scrub Side Room Near Dodongos"] = {
        ["child_access"] = function()
          if has("sling") or has("sticks") or has("sword1") then
            return AccessibilityLevel.Normal
          end
          return has_explosives()
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Dodongos Cavern Deku Scrub Lobby"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["Dodongos Cavern Beginning"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Dodongos Cavern Staircase Room"] = {
        ["child_access"] = function()
          local explo = AccessibilityLevel.None
          if has("sticks") then
            return AccessibilityLevel.Normal
          elseif has("dinsfire") and has("magic") then
            if has("sling") or has("sword1") then
              return AccessibilityLevel.Normal
            end
            explo = has_explosives()
          end
          return or_accessibility(explo, access_region("Dodongos Cavern Lobby", "adult"))
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Dodongos Cavern Far Bridge"] = {
        ["child_access"] = function()
          return access_region("Dodongos Cavern Far Bridge", "adult")
        end,
        ["adult_access"] = function()
          return access_region("Dodongos Cavern Far Bridge", "child")
        end
      }
    }
  },
  ["Dodongos Cavern Staircase Room"] = {
    ["scene"] = "Dodongos Cavern",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Dodongos Cavern Compass Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Dodongos Cavern GS Vines Above Stairs"] = {
        ["child_access"] = function()
          if has("lift1") or (has("dinsfire") and has("magic")) then
            return AccessibilityLevel.Normal
          end
          return has_explosives()
        end,
        ["adult_access"] = function()
          if has("lift1") or (has("dinsfire") and has("magic")) then
            return AccessibilityLevel.Normal
          end
          local bow = AccessibilityLevel.None
          if has("bow") then
            if has("logic_dc_staircase") then
              bow = AccessibilityLevel.Normal
            else
              bow = AccessibilityLevel.SequenceBreak
            end
          end
          local longshot = AccessibilityLevel.None
          if has("longshot") then
            if has("logic_dc_vines_gs") then
              longshot = AccessibilityLevel.Normal
            else
              longshot = AccessibilityLevel.SequenceBreak
            end
          end
          return or_accessibility(bow, longshot, has_explosives())
        end
      }
    },
    ["exits"] = {
      ["Dodongos Cavern Lobby"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Dodongos Cavern Climb"] = {
        ["child_access"] = function()
          if has("lift1") or (has("dinsfire") and has("magic")) then
            return AccessibilityLevel.Normal
          end
          return has_explosives()
        end,
        ["adult_access"] = function()
          if has("lift1") or (has("dinsfire") and has("magic")) then
            return AccessibilityLevel.Normal
          end
          local bow = AccessibilityLevel.None
          if has("bow") then
            if has("logic_dc_staircase") then
              bow = AccessibilityLevel.Normal
            else
              bow = AccessibilityLevel.SequenceBreak
            end
          end
          return or_accessibility(bow, has_explosives())
        end
      }
    }
  },
  ["Dodongos Cavern Climb"] = {
    ["scene"] = "Dodongos Cavern",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Dodongos Cavern Bomb Flower Platform Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Dodongos Cavern Deku Scrubs Near Bomb Bag"] = {
        ["child_access"] = function()
          return has_explosives()
        end,
        ["adult_access"] = function()
          local trick = AccessibilityLevel.None
          if has("lift1") then
            if has("logic_dc_scrub_room") then
              trick = AccessibilityLevel.Normal
            else
              trick = AccessibilityLevel.SequenceBreak
            end
          end
          return or_accessibility(trick, can_blast())
        end
      }
    },
    ["exits"] = {
      ["Dodongos Cavern Lobby"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Dodongos Cavern Far Bridge"] = {
        ["child_access"] = function()
          if has("sling") then
            return AccessibilityLevel.Normal
          end
          local trick = has("logic_dc_slingshot_skip") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
          if has("sticks") or has("sword1") then
            return trick
          end
          return and_accessibility(trick, has_explosives())
        end,
        ["adult_access"] = function()
          if has("bow") or has("hoverboots") or has("longshot") or has("logic_dc_jump") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.SequenceBreak
        end
      }
    }
  },
  ["Dodongos Cavern Far Bridge"] = {
    ["scene"] = "Dodongos Cavern",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Dodongos Cavern Bomb Bag Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Dodongos Cavern End of Bridge Chest"] = {
        ["child_access"] = function()
          return has_explosives()
        end,
        ["adult_access"] = function()
          return can_blast()
        end
      },
      ["Dodongos Cavern GS Alcove Above Stairs"] = {
        ["child_access"] = function()
          local collect = has("boomerang") and AccessibilityLevel.Normal or AccessibilityLevel.Inspect
          local kill = has_explosives()
          if has("boomerang") or has("sling") or (has("dinsfire") and has("magic")) then
            kill = AccessibilityLevel.Normal
          end

          return and_accessibility(collect, kill)
        end,
        ["adult_access"] = function()
          local collect = has("hookshot") and AccessibilityLevel.Normal or AccessibilityLevel.Inspect
          local kill = has_explosives()
          if has("hookshot") or has("bow") or (has("dinsfire") and has("magic")) then
            kill = AccessibilityLevel.Normal
          end

          return and_accessibility(collect, kill)
        end
      }
    },
    ["exits"] = {
      ["Dodongos Cavern Boss Area"] = {
        ["child_access"] = function()
          return has_explosives()
        end,
        ["adult_access"] = function()
          return has_explosives()
        end
      },
      ["Dodongos Cavern Lobby"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Dodongos Cavern Boss Area"] = {
    ["scene"] = "Dodongos Cavern",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Dodongos Cavern Boss Room Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Dodongos Cavern GS Back Room"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["King Dodongo"] = {
        ["child_access"] = function()
          if (has("bombs") or has("lift1")) and (has("sticks") or has("sword1")) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("bombs") or has("lift1") then
            return AccessibilityLevel.Normal
          elseif has("bombchu") and (has("shield2") or has("shield3")) then
            return AccessibilityLevel.SequenceBreak
          end
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["Dodongos Cavern Lobby"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Dodongos Cavern MQ Beginning"] = {
    ["scene"] = "Dodongos Cavern",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["exits"] = {
      ["Death Mountain"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Dodongos Cavern MQ Lobby"] = {
        ["child_access"] = function()
          if has("lift1") then
            return AccessibilityLevel.Normal
          end

          local hammer = has("hammer") and AccessibilityLevel.Normal or AccessibilityLevel.None
          return or_accessibility(
            has_explosives(),
            and_accessibility(hammer, access_region("Dodongos Cavern MQ Beginning", "adult"))
          )
        end,
        ["adult_access"] = function()
          if has("lift1") then
            return AccessibilityLevel.Normal
          end
          return can_blast()
        end
      }
    }
  },
  ["Dodongos Cavern MQ Lobby"] = {
    ["scene"] = "Dodongos Cavern",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Dodongos Cavern MQ Map Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Dodongos Cavern MQ Compass Chest"] = {
        ["child_access"] = function()
          if has("nuts") then
            return AccessibilityLevel.Normal
          end
          return can_child_attack()
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Dodongos Cavern MQ Larvae Room Chest"] = {
        ["child_access"] = function()
          if has("sticks") or (has("dinsfire") and has("magic")) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return has_fire()
        end
      },
      ["Dodongos Cavern MQ Torch Puzzle Room Chest"] = {
        ["child_access"] = function()
          if has("sticks") or (has("dinsfire") and has("magic")) then
            return AccessibilityLevel.Normal
          end
          return has_explosives()
        end,
        ["adult_access"] = function()
          if has("dinsfire") and has("magic") then
            return AccessibilityLevel.Normal
          end
          if has("logic_dc_jump") or has("hoverboots") or has("hookshot") then
            return AccessibilityLevel.Normal
          end
          local trick = AccessibilityLevel.SequenceBreak
          return or_accessibility(trick, can_blast())
        end
      },
      ["Dodongos Cavern MQ GS Song of Time Block Room"] = {
        ["child_access"] = function()
          if has("ocarina") and has("time") then
            return can_child_attack()
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("ocarina") and has("time") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["Dodongos Cavern MQ GS Larvae Room"] = {
        ["child_access"] = function()
          if has("sticks") or (has("dinsfire") and has("magic")) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return has_fire()
        end
      },
      ["Dodongos Cavern MQ GS Lizalfos Room"] = {
        ["child_access"] = function()
          return has_explosives()
        end,
        ["adult_access"] = function()
          return can_blast()
        end
      },
      ["Dodongos Cavern MQ Deku Scrubs Lobby"] = {
        ["child_access"] = function()
          if has("nuts") or has("shield1") then
            return AccessibilityLevel.Normal
          end
          return can_child_attack()
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Dodongos Cavern MQ Deku Scrub Staircase"] = {
        ["child_access"] = function()
          if has("nuts") or has("shield1") then
            return AccessibilityLevel.Normal
          end
          return can_child_attack()
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["Dodongos Cavern MQ Lower Right Side"] = {
        ["child_access"] = function()
          local smash = AccessibilityLevel.None
          if has("hammer") then
            smash = access_region("Dodongos Cavern MQ Lobby", "adult")
          end
          local flower = AccessibilityLevel.None
          if has("sticks") or (has("dinsfire") and has("magic")) then
            flower = AccessibilityLevel.Normal
          end
          return or_accessibility(
            or_accessibility(has_explosives(), smash),
            and_accessibility(flower, damage_single_instance_ohko())
          )
        end,
        ["adult_access"] = function()
          local flower = AccessibilityLevel.None
          if has("dinsfire") and has("magic") then
            flower = AccessibilityLevel.Normal
          elseif has("sticks") then
            flower = access_region("Dodongos Cavern MQ Lobby", "child")
          end
          return or_accessibility(can_blast(), and_accessibility(flower, damage_single_instance_ohko()))
        end
      },
      ["Dodongos Cavern MQ Bomb Bag Area"] = {
        ["child_access"] = function()
          local adult = access_region("Dodongos Cavern MQ Lobby", "adult")
          local recoil = AccessibilityLevel.None
          if has("sword1") or has("sticks") then
            local trick = AccessibilityLevel.SequenceBreak
            if has("logic_dc_mq_child_bombs") then
              trick = AccessibilityLevel.Normal
            end
            recoil = and_accessibility(trick, damage_single_instance_ohko())
          end
          return or_accessibility(and_accessibility(adult, has_explosives()), recoil)
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Dodongos Cavern MQ Boss Area"] = {
        ["child_access"] = function()
          local lift = has("lift1") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local sticks = has("sticks") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local df = (has("dinsfire") and has("magic")) and AccessibilityLevel.Normal or AccessibilityLevel.None
          local trick_eyes = has("logic_dc_mq_eyes") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
          local trick_child =
            has("logic_dc_mq_child_back") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak

          return or_accessibility(
            has_explosives(),
            and_accessibility(trick_eyes, lift, trick_child, or_accessibility(sticks, df))
          )
        end,
        ["adult_access"] = function()
          local lift = has("lift1") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local sticks = has("sticks") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local hammer = has("hammer") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local hb = has("hoverboots") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local hs = has("hookshot") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local df = (has("dinsfire") and has("magic")) and AccessibilityLevel.Normal or AccessibilityLevel.None
          local trick_eyes = has("logic_dc_mq_eyes") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
          local trick_jump = has("logic_dc_jump") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak

          return or_accessibility(
            has_explosives(),
            and_accessibility(
              trick_eyes,
              lift,
              or_accessibility(
                and_accessibility(sticks, access_region("Dodongos Cavern MQ Lobby", "child")),
                df,
                trick_jump,
                hammer,
                hb,
                hs
              )
            )
          )
        end
      }
    }
  },
  ["Dodongos Cavern MQ Lower Right Side"] = {
    ["scene"] = "Dodongos Cavern",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Dodongos Cavern MQ Deku Scrub Side Room Near Lower Lizalfos"] = {
        ["child_access"] = function()
          if has("nuts") or has("shield1") then
            return AccessibilityLevel.Normal
          end
          return can_child_attack()
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["Dodongos Cavern MQ Bomb Bag Area"] = {
        ["child_access"] = function()
          if has("sling") then
            if has("lift1") or (has("dinsfire") and has("magic")) then
              return AccessibilityLevel.Normal
            end
            local bow = AccessibilityLevel.None
            if has("bow") then
              bow = access_region("Dodongos Cavern MQ Lower Right Side", "adult")
            end
            return or_accessibility(bow, has_explosives())
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Dodongos Cavern MQ Bomb Bag Area"] = {
    ["scene"] = "Dodongos Cavern",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Dodongos Cavern MQ Bomb Bag Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Dodongos Cavern MQ GS Scrub Room"] = {
        ["child_access"] = function()
          local bow = has("bow") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local rang = has("boomerang") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local sling = has("sling") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local lift = has("lift1") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local df = (has("dinsfire") and has("magic")) and AccessibilityLevel.Normal or AccessibilityLevel.None

          local reach =
            or_accessibility(
            and_accessibility(bow, access_region("Dodongos Cavern MQ Bomb Bag Area", "adult")),
            lift,
            df,
            has_explosives()
          )
          local kill = or_accessibility(rang, sling, has_bombchus())
          local collect = has("boomerang") and AccessibilityLevel.Normal or AccessibilityLevel.Inspect

          return and_accessibility(reach, kill, collect)
        end,
        ["adult_access"] = function()
          local bow = has("bow") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local hs = has("hookshot") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local lift = has("lift1") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local df = (has("dinsfire") and has("magic")) and AccessibilityLevel.Normal or AccessibilityLevel.None

          local reach = or_accessibility(bow, lift, df, has_explosives())
          local kill = or_accessibility(hs, bow, has_bombchus())
          local collect = has("hookshot") and AccessibilityLevel.Normal or AccessibilityLevel.Inspect

          return and_accessibility(reach, kill, collect)
        end
      }
    },
    ["exits"] = {
      ["Dodongos Cavern MQ Lower Right Side"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Dodongos Cavern MQ Boss Area"] = {
    ["scene"] = "Dodongos Cavern",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Dodongos Cavern MQ Under Grave Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Dodongos Cavern MQ Boss Room Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Dodongos Cavern MQ GS Back Area"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["King Dodongo"] = {
        ["child_access"] = function()
          if (has("bombs") or has("lift1")) and (has("sticks") or has("sword1")) then
            return has_explosives()
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("bombs") or has("lift1") then
            return can_blast()
          elseif has("bombchu") and (has("shield2") or has("shield3")) then
            return AccessibilityLevel.SequenceBreak
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Fire Temple Split"] = {
    ["scene"] = "Fire Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["exits"] = {
      ["Fire Temple Lower"] = {
        ["child_access"] = function()
          if has("fire_reg") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("fire_reg") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["Fire Temple MQ Lower"] = {
        ["child_access"] = function()
          if has("fire_mq") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("fire_mq") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Fire Temple Lower"] = {
    ["scene"] = "Fire Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Fire Temple Near Boss Chest"] = {
        ["child_access"] = function()
          if has("logic_fewer_tunic_requirements") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.SequenceBreak
        end,
        ["adult_access"] = function()
          return FTR_or_goron()
        end
      },
      ["Fire Temple Flare Dancer Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("hammer") then
            if not HAS_KEYS or has("fire_small_keys", 8) then
              return AccessibilityLevel.Normal
            elseif has("fire_small_keys", 1) then
              return AccessibilityLevel.SequenceBreak
            end
          end
          return AccessibilityLevel.None
        end
      },
      ["Fire Temple Boss Key Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("hammer") then
            if not HAS_KEYS or has("fire_small_keys", 8) then
              return AccessibilityLevel.Normal
            elseif has("fire_small_keys", 1) then
              return AccessibilityLevel.SequenceBreak
            end
          end
          return AccessibilityLevel.None
        end
      },
      ["Volvagia"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("hammer") and has("fire_boss_key") then
            local tunic = has("redtunic") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
            local trick =
              has("logic_fire_boss_door_jump") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
            local hb = has("hoverboots") and AccessibilityLevel.Normal or AccessibilityLevel.None
            local sot = (has("ocarina") and has("time")) and AccessibilityLevel.Normal or AccessibilityLevel.None

            return and_accessibility(
              tunic,
              or_accessibility(
                trick,
                hb,
                and_accessibility(or_accessibility(sot, has_explosives()), access_region("Fire Temple Upper", "adult"))
              )
            )
          end
          return AccessibilityLevel.None
        end
      },
      ["Fire Temple GS Boss Key Loop"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("hammer") then
            if not HAS_KEYS or has("fire_small_keys", 8) then
              return AccessibilityLevel.Normal
            elseif has("fire_small_keys", 1) then
              return AccessibilityLevel.SequenceBreak
            end
          end
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["DMC Fire Temple Entrance"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Fire Temple Big Lava Room"] = {
        ["child_access"] = function()
          if has("fire_small_keys", 2) and has("logic_fewer_tunic_requirements") then
            return AccessibilityLevel.Normal
          elseif has("fire_small_keys", 1) then
            return AccessibilityLevel.SequenceBreak
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("fire_small_keys", 2) then
            return FTR_or_goron()
          elseif has("fire_small_keys", 1) then
            return AccessibilityLevel.SequenceBreak
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Fire Temple Big Lava Room"] = {
    ["scene"] = "Fire Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Fire Temple Big Lava Room Lower Open Door Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Fire Temple Big Lava Room Blocked Door Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return has_explosives()
        end
      },
      ["Fire Temple GS Song of Time Room"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if (has("ocarina") and has("time")) or has("logic_fire_song_of_time") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.SequenceBreak
        end
      }
    },
    ["exits"] = {
      ["Fire Temple Lower"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Fire Temple Middle"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          local tunic = has("redtunic") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
          local keys = AccessibilityLevel.None
          if has("fire_small_keys", 4) then
            keys = AccessibilityLevel.Normal
          elseif has("fire_small_keys", 3) then
            keys = AccessibilityLevel.SequenceBreak
          end
          local block = AccessibilityLevel.SequenceBreak
          if has("lift1") or has("logic_fire_strength") then
            block = AccessibilityLevel.Normal
          end

          return and_accessibility(tunic, keys, block, has_projectile("adult"))
        end
      }
    }
  },
  ["Fire Temple Middle"] = {
    ["scene"] = "Fire Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Fire Temple Boulder Maze Lower Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Fire Temple Boulder Maze Upper Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("fire_small_keys", 6) then
            return AccessibilityLevel.Normal
          elseif has("fire_small_keys", 5) then
            return AccessibilityLevel.SequenceBreak
          end
          return AccessibilityLevel.None
        end
      },
      ["Fire Temple Boulder Maze Side Room Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Fire Temple Boulder Maze Shortcut Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          local keys = AccessibilityLevel.None
          if has("fire_small_keys", 6) then
            keys = AccessibilityLevel.Normal
          elseif has("fire_small_keys", 5) then
            keys = AccessibilityLevel.SequenceBreak
          end
          return and_accessibility(keys, has_explosives())
        end
      },
      ["Fire Temple Scarecrow Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          local keys = AccessibilityLevel.None
          if has("fire_small_keys", 6) then
            keys = AccessibilityLevel.Normal
          elseif has("fire_small_keys", 5) then
            keys = AccessibilityLevel.SequenceBreak
          end
          local pixelshot = AccessibilityLevel.None
          if has("longshot") then
            if has("logic_fire_scarecrow") then
              pixelshot = AccessibilityLevel.Normal
            else
              pixelshot = AccessibilityLevel.SequenceBreak
            end
          end
          return and_accessibility(keys, or_accessibility(can_use_scarecrow(), pixelshot))
        end
      },
      ["Fire Temple Map Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("fire_small_keys", 6) or (has("fire_small_keys", 5) and has("bow")) then
            return AccessibilityLevel.Normal
          elseif has("fire_small_keys", 5) then
            return AccessibilityLevel.SequenceBreak
          end
          return AccessibilityLevel.None
        end
      },
      ["Fire Temple Compass Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("fire_small_keys", 7) then
            return AccessibilityLevel.Normal
          elseif has("fire_small_keys", 6) then
            return AccessibilityLevel.SequenceBreak
          end
          return AccessibilityLevel.None
        end
      },
      ["Fire Temple GS Boulder Maze"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          local keys = AccessibilityLevel.None
          if has("fire_small_keys", 4) then
            keys = AccessibilityLevel.Normal
          elseif has("fire_small_keys", 3) then
            keys = AccessibilityLevel.SequenceBreak
          end
          return and_accessibility(keys, has_explosives())
        end
      },
      ["Fire Temple GS Scarecrow Climb"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          local keys = AccessibilityLevel.None
          if has("fire_small_keys", 6) then
            keys = AccessibilityLevel.Normal
          elseif has("fire_small_keys", 5) then
            keys = AccessibilityLevel.SequenceBreak
          end
          local pixelshot = AccessibilityLevel.None
          if has("longshot") then
            if has("logic_fire_scarecrow") then
              pixelshot = AccessibilityLevel.Normal
            else
              pixelshot = AccessibilityLevel.SequenceBreak
            end
          end
          return and_accessibility(keys, or_accessibility(can_use_scarecrow(), pixelshot))
        end
      },
      ["Fire Temple GS Scarecrow Top"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          local keys = AccessibilityLevel.None
          if has("fire_small_keys", 6) then
            keys = AccessibilityLevel.Normal
          elseif has("fire_small_keys", 5) then
            keys = AccessibilityLevel.SequenceBreak
          end
          local pixelshot = AccessibilityLevel.None
          if has("longshot") then
            if has("logic_fire_scarecrow") then
              pixelshot = AccessibilityLevel.Normal
            else
              pixelshot = AccessibilityLevel.SequenceBreak
            end
          end
          return and_accessibility(keys, or_accessibility(can_use_scarecrow(), pixelshot))
        end
      }
    },
    ["exits"] = {
      ["Fire Temple Upper"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("fire_small_keys", 8) then
            return AccessibilityLevel.Normal
          elseif has("fire_small_keys", 7) and ((has("hoverboots") and has("hammer")) or has("logic_fire_flame_maze")) then
            return AccessibilityLevel.Normal
          elseif has("fire_small_keys", 6) then
            return AccessibilityLevel.SequenceBreak
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Fire Temple Upper"] = {
    ["scene"] = "Fire Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Fire Temple Highest Goron Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("hammer") then
            if has("ocarina") and has("time") then
              return AccessibilityLevel.Normal
            end
            local trick = has("logic_rusted_switches") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
            local hb = has("hoverboots") and AccessibilityLevel.Normal or AccessibilityLevel.None
            return and_accessibility(trick, or_accessibility(hb, has_explosives()))
          end
          return AccessibilityLevel.None
        end
      },
      ["Fire Temple Megaton Hammer Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return has_explosives()
        end
      }
    }
  },
  ["Fire Temple MQ Lower"] = {
    ["scene"] = "Fire Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Fire Temple MQ Map Room Side Chest"] = {
        ["child_access"] = function()
          if has("sword1") or has("sticks") or has("sling") or has("bombs") or (has("dinsfire") and has("magic")) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Fire Temple MQ Near Boss Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          local hb = has("hoverboots") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local trick = has("logic_fire_mq_near_boss") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
          local bow = has("bow") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local hs = has("hookshot") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local fa =
            (has("bow") and has("firearrow") and has("magic")) and AccessibilityLevel.Normal or AccessibilityLevel.None
          local df = (has("dinsfire") and has("magic")) and AccessibilityLevel.Normal or AccessibilityLevel.None
          local tunic = has("redtunic") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
          local ls = has("longshot") and AccessibilityLevel.Normal or AccessibilityLevel.None

          return and_accessibility(
            FTR_or_goron(),
            or_accessibility(
              and_accessibility(or_accessibility(hb, and_accessibility(trick, bow)), has_fire()),
              and_accessibility(
                hs,
                or_accessibility(fa, and_accessibility(df, or_accessibility(damage_below_quadruple(), tunic, bow, ls)))
              )
            )
          )
        end
      }
    },
    ["exits"] = {
      ["DMC Fire Temple Entrance"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Fire MQ Boss Room"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("hammer") and has("fire_boss_key") then
            local tunic = has("redtunic") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
            local jump =
              (has("logic_fire_boss_door_jump") or has("hoverboots")) and AccessibilityLevel.Normal or
              AccessibilityLevel.SequenceBreak

            return and_accessibility(
              tunic,
              or_accessibility(and_accessibility(has_fire(), jump), access_region("Fire Temple MQ Upper", "adult"))
            )
          end
          return AccessibilityLevel.None
        end
      },
      ["Fire MQ Lower Locked Door"] = {
        ["child_access"] = function()
          if has("sword1") then
            if has("fire_small_keys", 5) then
              return AccessibilityLevel.Normal
            elseif has("fire_small_keys", 1) then
              return AccessibilityLevel.SequenceBreak
            end
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("fire_small_keys", 5) then
            return AccessibilityLevel.Normal
          elseif has("fire_small_keys", 1) then
            return AccessibilityLevel.SequenceBreak
          end
          return AccessibilityLevel.None
        end
      },
      ["Fire MQ Big Lava Room"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("hammer") then
            return FTR_or_goron()
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Fire MQ Lower Locked Door"] = {
    ["scene"] = "Fire Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Fire Temple MQ Megaton Hammer Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("hammer") or has("hookshot") then
            return AccessibilityLevel.Normal
          end
          return has_explosives()
        end
      },
      ["Fire Temple MQ Map Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("hammer") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Fire MQ Big Lava Room"] = {
    ["scene"] = "Fire Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Fire Temple MQ Boss Key Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("hookshot") then
            local trick =
              (has("bow") or has("logic_fire_mq_bk_chest")) and AccessibilityLevel.Normal or
              AccessibilityLevel.SequenceBreak
            return and_accessibility(has_fire(), trick)
          end
          return AccessibilityLevel.None
        end
      },
      ["Fire Temple MQ Big Lava Room Blocked Door Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          local trick =
            (has("hookshot") or has("logic_fire_mq_blocked_chest")) and AccessibilityLevel.Normal or
            AccessibilityLevel.SequenceBreak
          return and_accessibility(has_fire(), has_explosives(), trick)
        end
      },
      ["Fire Temple MQ GS Big Lava Room Open Door"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["Fire MQ Lower Maze"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          local tunic = has("redtunic") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
          local keys = AccessibilityLevel.None
          if has("fire_small_keys", 2) then
            keys = AccessibilityLevel.Normal
          elseif has("fire_small_keys", 1) then
            keys = AccessibilityLevel.SequenceBreak
          end
          local trick = AccessibilityLevel.None
          if has("hoverboots") then
            if has("logic_fire_mq_climb") then
              trick = AccessibilityLevel.Normal
            else
              trick = AccessibilityLevel.SequenceBreak
            end
          end

          return and_accessibility(tunic, keys, or_accessibility(has_fire(), trick))
        end
      }
    }
  },
  ["Fire MQ Lower Maze"] = {
    ["scene"] = "Fire Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Fire Temple MQ Lizalfos Maze Lower Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Fire Temple MQ Lizalfos Maze Side Room Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          local trick =
            has("logic_fire_mq_maze_side_room") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
          return and_accessibility(
            has_explosives(),
            or_accessibility(trick, access_region("Fire MQ Upper Maze", "adult"))
          )
        end
      }
    },
    ["exits"] = {
      ["Fire MQ Upper Maze"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("logic_fire_mq_maze_jump") then
            return AccessibilityLevel.Normal
          end
          if has("logic_fire_mq_maze_hovers") and has("hoverboots") then
            return AccessibilityLevel.Normal
          end
          if has("hookshot") then
            if has("logic_rusted_switches") or (has_explosives() == AccessibilityLevel.Normal) then
              return AccessibilityLevel.Normal
            end
          end
          return AccessibilityLevel.SequenceBreak
        end
      }
    }
  },
  ["Fire MQ Upper Maze"] = {
    ["scene"] = "Fire Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Fire Temple MQ Lizalfos Maze Upper Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Fire Temple MQ Compass Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return has_explosives()
        end
      },
      ["Fire Temple MQ GS Skull On Fire"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("longshot") then
            return AccessibilityLevel.Normal
          end
          if has("ocarina") and has("time") and has("hookshot") then
            local trick = has("logic_rusted_switches") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
            return or_accessibility(has_explosives(), trick)
          end
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["Fire Temple MQ Upper"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("bow") and (has("hookshot") or (has("firearrow") and has("magic"))) then
            if has("fire_small_keys", 3) then
              return AccessibilityLevel.Normal
            elseif has("fire_small_keys", 2) then
              return AccessibilityLevel.SequenceBreak
            end
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Fire Temple MQ Upper"] = {
    ["scene"] = "Fire Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Fire Temple MQ Freestanding Key"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("hookshot") or has("logic_fire_mq_flame_maze") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.SequenceBreak
        end
      },
      ["Fire Temple MQ Chest On Fire"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          local trick =
            (has("hookshot") or has("logic_fire_mq_flame_maze")) and AccessibilityLevel.Normal or
            AccessibilityLevel.SequenceBreak
          local keys = AccessibilityLevel.None
          if has("fire_small_keys", 4) then
            keys = AccessibilityLevel.Normal
          elseif has("fire_small_keys", 3) then
            keys = AccessibilityLevel.SequenceBreak
          end
          return and_accessibility(trick, keys)
        end
      },
      ["Fire Temple MQ GS Fire Wall Maze Side Room"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if (has("ocarina") and has("time")) or has("hoverboots") or has("logic_fire_mq_flame_maze") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.SequenceBreak
        end
      },
      ["Fire Temple MQ GS Fire Wall Maze Center"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return has_explosives()
        end
      },
      ["Fire Temple MQ GS Above Fire Wall Maze"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          local hs = has("hookshot") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local keys = AccessibilityLevel.None
          if has("fire_small_keys", 5) then
            keys = AccessibilityLevel.Normal
          elseif has("fire_small_keys", 4) then
            keys = AccessibilityLevel.SequenceBreak
          end
          local trick =
            has("logic_fire_mq_above_maze_gs") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
          local ls = has("longshot") and AccessibilityLevel.Normal or AccessibilityLevel.None

          return or_accessibility(and_accessibility(hs, keys), and_accessibility(trick, ls))
        end
      }
    }
  },
  ["Fire MQ Boss Room"] = {
    ["scene"] = "Fire Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Volvagia"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Forest Temple Split"] = {
    ["scene"] = "Forest Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["exits"] = {
      ["Forest Temple Lobby"] = {
        ["child_access"] = function()
          if has("forest_reg") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("forest_reg") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["Forest Temple MQ Lobby"] = {
        ["child_access"] = function()
          if has("forest_mq") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("forest_mq") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Forest Temple Lobby"] = {
    ["scene"] = "Forest Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Forest Temple First Room Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Forest Temple First Stalfos Chest"] = {
        ["child_access"] = function()
          if has("sword1") then
            return AccessibilityLevel.Normal
          elseif has("sticks") then
            return AccessibilityLevel.SequenceBreak
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Forest Temple GS First Room"] = {
        ["child_access"] = function()
          if has("boomerang") or has("sling") or (has("dinsfire") and has("magic")) then
            return AccessibilityLevel.Normal
          end
          local trick = has("logic_forest_first_gs") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
          local bombs = has("bombs") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local js = (has("sticks") or has("sword1")) and AccessibilityLevel.Normal or AccessibilityLevel.None
          return or_accessibility(
            has_bombchus(),
            and_accessibility(trick, or_accessibility(bombs, and_accessibility(js, damage_single_instance_ohko())))
          )
        end,
        ["adult_access"] = function()
          if has("hookshot") or has("bow") or has("bombs") or (has("dinsfire") and has("magic")) then
            return AccessibilityLevel.Normal
          end
          local trick = has("logic_forest_first_gs") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
          return or_accessibility(has_bombchus(), and_accessibility(trick, damage_single_instance_ohko()))
        end
      },
      ["Forest Temple GS Lobby"] = {
        ["child_access"] = function()
          local kill = has_explosives()
          if has("boomerang") or has("sling") or (has("dinsfire") and has("magic")) then
            kill = AccessibilityLevel.Normal
          end
          local collect = has("boomerang") and AccessibilityLevel.Normal or AccessibilityLevel.Inspect

          return and_accessibility(kill, collect)
        end,
        ["adult_access"] = function()
          local kill = has_explosives()
          if has("hookshot") or has("bow") or (has("dinsfire") and has("magic")) then
            kill = AccessibilityLevel.Normal
          end
          local collect = has("hookshot") and AccessibilityLevel.Normal or AccessibilityLevel.Inspect

          return and_accessibility(kill, collect)
        end
      }
    },
    ["exits"] = {
      ["SFM Forest Temple Entrance Ledge"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Forest Temple NW Outdoors"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          if has("ocarina") and has("time") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["Forest Temple NE Outdoors"] = {
        ["child_access"] = function()
          if has("sling") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("bow") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["Forest Temple Block Push Room"] = {
        ["child_access"] = function()
          if has("forest_small_keys", 1) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("forest_small_keys", 1) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["Forest Temple Boss Region"] = {
        ["child_access"] = function()
          return poes_killed()
        end,
        ["adult_access"] = function()
          return poes_killed()
        end
      }
    }
  },
  ["Forest Temple NW Outdoors"] = {
    ["scene"] = "Forest Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Forest Temple GS Level Island Courtyard"] = {
        ["child_access"] = function()
          if has("sling") then
            return AccessibilityLevel.Inspect
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          local ls = has("longshot") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local hs = has("hookshot") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local ledge = access_region("Forest Temple Outside Upper Ledge", "adult")
          local bow = has("bow") and AccessibilityLevel.Normal or AccessibilityLevel.None

          local kill = or_accessibility(ls, and_accessibility(hs, ledge), bow, has_bombchus())
          local collect = or_accessibility(ls, and_accessibility(hs, ledge), AccessibilityLevel.Inspect)

          return and_accessibility(kill, collect)
        end
      }
    },
    ["exits"] = {
      ["Forest Temple NE Outdoors"] = {
        ["child_access"] = function()
          if has("scale2") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("scale2") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["Forest Temple Outdoors High Balconies"] = {
        ["child_access"] = function()
          if (has("boomerang") or has("nuts") or has("shield1")) and (has("sticks") or has("sword1") or has("sling")) then
            return AccessibilityLevel.Normal
          end
          return or_accessibility(access_region("Forest Temple NW Outdoors", "adult"), has_explosives())
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Forest Temple NE Outdoors"] = {
    ["scene"] = "Forest Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Forest Temple Raised Island Courtyard Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("hookshot") then
            return AccessibilityLevel.Normal
          end
          local trick =
            has("logic_forest_outdoors_ledge") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
          local hb = has("hoverboots") and AccessibilityLevel.Normal or AccessibilityLevel.None
          return or_accessibility(
            access_region("Forest Temple Falling Room", "adult"),
            and_accessibility(trick, hb, access_region("Forest Temple Outdoors High Balconies", "adult"))
          )
        end
      },
      ["Forest Temple GS Raised Island Courtyard"] = {
        ["child_access"] = function()
          local trick =
            has("logic_forest_outdoor_east_gs") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
          local kill = (has("boomerang") or has("sling")) and AccessibilityLevel.Normal or AccessibilityLevel.None
          local collect = has("boomerang") and AccessibilityLevel.Normal or AccessibilityLevel.Inspect

          return and_accessibility(trick, kill, collect)
        end,
        ["adult_access"] = function()
          if has("hookshot") then
            return AccessibilityLevel.Normal
          end

          local above = access_region("Forest Temple Falling Room", "adult")
          local balcony = access_region("Forest Temple Outdoors High Balconies", "adult")
          local hb = has("hoverboots") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local bow = has("bow") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local df = (has("dinsfire") and has("magic")) and AccessibilityLevel.Normal or AccessibilityLevel.None

          return or_accessibility(
            and_accessibility(bow, AccessibilityLevel.Inspect),
            and_accessibility(balcony, hb, AccessibilityLevel.Inspect),
            and_accessibility(above, or_accessibility(bow, df, has_explosives(), AccessibilityLevel.Inspect))
          )
        end
      }
    },
    ["exits"] = {
      ["Forest Temple Outdoors High Balconies"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("longshot") then
            return AccessibilityLevel.Normal
          elseif has("hookshot") then
            if has("logic_forest_vines") then
              return AccessibilityLevel.Normal
            end
            return AccessibilityLevel.SequenceBreak
          end
          return AccessibilityLevel.None
        end
      },
      ["Forest Temple NW Outdoors"] = {
        ["child_access"] = function()
          if has("scale2") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("ironboots") or has("scale2") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["Forest Temple Lobby"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Forest Temple Outdoors High Balconies"] = {
    ["scene"] = "Forest Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Forest Temple Well Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Forest Temple Map Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["Forest Temple NW Outdoors"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Forest Temple NE Outdoors"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Forest Temple Falling Room"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("hoverboots") then
            local trick =
              has("logic_forest_door_frame") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
            return and_accessibility(trick, can_use_scarecrow())
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Forest Temple Falling Room"] = {
    ["scene"] = "Forest Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Forest Temple Falling Ceiling Room Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["Forest Temple NE Outdoors"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Forest Temple Block Push Room"] = {
    ["scene"] = "Forest Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Forest Temple Eye Switch Chest"] = {
        ["child_access"] = function()
          if has("lift1") and has("sling") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("lift1") and has("bow") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["Forest Temple Outside Upper Ledge"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("hoverboots") then
            return AccessibilityLevel.Normal
          elseif has("lift1") then
            if has("logic_forest_outside_backdoor") then
              return AccessibilityLevel.Normal
            end
            return AccessibilityLevel.SequenceBreak
          end
          return AccessibilityLevel.None
        end
      },
      ["Forest Temple Bow Region"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("lift1") and has("forest_small_keys", 3) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["Forest Temple Straightened Hall"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("lift1") and has("forest_small_keys", 2) and has("bow") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Forest Temple Straightened Hall"] = {
    ["scene"] = "Forest Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Forest Temple Boss Key Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["Forest Temple Outside Upper Ledge"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Forest Temple Outside Upper Ledge"] = {
    ["scene"] = "Forest Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Forest Temple Floormaster Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["Forest Temple NW Outdoors"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Forest Temple Bow Region"] = {
    ["scene"] = "Forest Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Forest Temple Bow Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Forest Temple Red Poe Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("bow") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["Forest Temple Blue Poe Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("bow") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["Forest Temple Falling Room"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("forest_small_keys", 5) and (has("bow") or (has("dinsfire") and has("magic"))) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Forest Temple Boss Region"] = {
    ["scene"] = "Forest Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Forest Temple Basement Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Forest Temple GS Basement"] = {
        ["child_access"] = function()
          local kill = has_explosives()
          if has("boomerang") or has("sling") or (has("dinsfire") and has("magic")) then
            kill = AccessibilityLevel.Normal
          end
          local collect = has("boomerang") and AccessibilityLevel.Normal or AccessibilityLevel.Inspect

          return and_accessibility(kill, collect)
        end,
        ["adult_access"] = function()
          local kill = has_explosives()
          if has("hookshot") or has("bow") or (has("dinsfire") and has("magic")) then
            kill = AccessibilityLevel.Normal
          end
          local collect = has("hookshot") and AccessibilityLevel.Normal or AccessibilityLevel.Inspect

          return and_accessibility(kill, collect)
        end
      },
      ["Phantom Ganon"] = {
        ["child_access"] = function()
          if has("forest_boss_key") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("forest_boss_key") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Forest Temple MQ Lobby"] = {
    ["scene"] = "Forest Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Forest Temple MQ First Room Chest"] = {
        ["child_access"] = function()
          if
            has("bombs") or has("sticks") or has("nuts") or has("boomerang") or (has("dinsfire") and has("magic")) or
              has("sword1") or
              has("sling")
           then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Forest Temple MQ GS First Hallway"] = {
        ["child_access"] = function()
          local kill = has_explosives()
          if has("boomerang") or has("sling") or (has("dinsfire") and has("magic")) then
            kill = AccessibilityLevel.Normal
          end
          local collect = has("boomerang") and AccessibilityLevel.Normal or AccessibilityLevel.Inspect

          return and_accessibility(kill, collect)
        end,
        ["adult_access"] = function()
          local kill = has_explosives()
          if has("hookshot") or has("bow") or (has("dinsfire") and has("magic")) then
            kill = AccessibilityLevel.Normal
          end
          local collect = has("hookshot") and AccessibilityLevel.Normal or AccessibilityLevel.Inspect

          return and_accessibility(kill, collect)
        end
      }
    },
    ["exits"] = {
      ["SFM Forest Temple Entrance Ledge"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Forest Temple MQ Central Area"] = {
        ["child_access"] = function()
          if has("forest_small_keys", 1) then
            if has("nuts") then
              return AccessibilityLevel.Normal
            end
            return can_child_attack()
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("forest_small_keys", 1) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Forest Temple MQ Central Area"] = {
    ["scene"] = "Forest Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Forest Temple MQ Wolfos Chest"] = {
        ["child_access"] = function()
          if (has("dinsfire") and has("magic")) or has("sticks") or has("sling") or has("sword1") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("ocarina") and has("time") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["Forest Temple MQ GS Block Push Room"] = {
        ["child_access"] = function()
          if has("sword1") then
            return AccessibilityLevel.Normal
          elseif has("sticks") then
            return AccessibilityLevel.SequenceBreak
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["Forest Temple MQ NW Outdoors"] = {
        ["child_access"] = function()
          if has("sling") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("bow") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["Forest Temple MQ NE Outdoors"] = {
        ["child_access"] = function()
          if has("sling") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("bow") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["Forest Temple MQ After Block Puzzle"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("lift1") then
            return AccessibilityLevel.Normal
          end
          if has("hookshot") then
            local trick =
              has("logic_forest_mq_block_puzzle") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
            return and_accessibility(trick, has_bombchus())
          end
          return AccessibilityLevel.None
        end
      },
      ["Forest Temple MQ Outdoor Ledge"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("hoverboots") then
            if has("logic_forest_mq_hallway_switch_jumpslash") then
              return AccessibilityLevel.Normal
            end
            return AccessibilityLevel.SequenceBreak
          end
          return AccessibilityLevel.None
        end
      },
      ["Forest Temple MQ Boss Region"] = {
        ["child_access"] = function()
          return poes_killed_mq()
        end,
        ["adult_access"] = function()
          return poes_killed_mq()
        end
      }
    }
  },
  ["Forest Temple MQ After Block Puzzle"] = {
    ["scene"] = "Forest Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Forest Temple MQ Boss Key Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("forest_small_keys", 3) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["Forest Temple MQ Bow Region"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("forest_small_keys", 4) then
            return AccessibilityLevel.Normal
          elseif has("forest_small_keys", 3) then
            return AccessibilityLevel.SequenceBreak
          end
          return AccessibilityLevel.None
        end
      },
      ["Forest Temple MQ Outdoor Ledge"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("forest_small_keys", 3) then
            return AccessibilityLevel.Normal
          end

          local keys = has("forest_small_keys", 2) and AccessibilityLevel.SequenceBreak or AccessibilityLevel.None
          local trick1 =
            has("logic_forest_mq_hallway_switch_jumpslash") and AccessibilityLevel.Normal or
            AccessibilityLevel.SequenceBreak
          local hook = has("hookshot") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local trick2 =
            has("logic_forest_outside_backdoor") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak

          return or_accessibility(keys, and_accessibility(trick1, or_accessibility(hook, trick2)))
        end
      },
      ["Forest Temple MQ NW Outdoors"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("forest_small_keys", 2) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Forest Temple MQ Outdoor Ledge"] = {
    ["scene"] = "Forest Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Forest Temple MQ Redead Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["Forest Temple MQ NW Outdoors"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Forest Temple MQ NW Outdoors"] = {
    ["scene"] = "Forest Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Forest Temple MQ GS Level Island Courtyard"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["Forest Temple MQ NE Outdoors"] = {
        ["child_access"] = function()
          if has("scale2") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("ironboots") or has("longshot") or has("scale2") then
            return AccessibilityLevel.Normal
          end
          if has("hookshot") then
            if has("logic_forest_well_swim") then
              return AccessibilityLevel.Normal
            end
            return AccessibilityLevel.SequenceBreak
          end
          return AccessibilityLevel.None
        end
      },
      ["Forest Temple MQ Outdoors Top Ledges"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("bow") and has("firearrow") and has("magic") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Forest Temple MQ NE Outdoors"] = {
    ["scene"] = "Forest Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Forest Temple MQ Well Chest"] = {
        ["child_access"] = function()
          if has("sling") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("bow") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["Forest Temple MQ GS Raised Island Courtyard"] = {
        ["child_access"] = function()
          local kill = has_bombchus()
          if has("boomerang") or has("sling") or (has("dinsfire") and has("magic")) then
            kill = AccessibilityLevel.Normal
          end
          local collect = has("boomerang") and AccessibilityLevel.Normal or AccessibilityLevel.Inspect

          return and_accessibility(kill, collect)
        end,
        ["adult_access"] = function()
          if has("hookshot") then
            return AccessibilityLevel.Normal
          end

          local kill = has_explosives()
          if has("bow") or (has("dinsfire") and has("magic")) then
            kill = AccessibilityLevel.Normal
          end
          local balcony =
            (has("bow") and has("firearrow") and has("magic")) and AccessibilityLevel.Normal or AccessibilityLevel.None
          local sot = (has("ocarina") and has("time")) and AccessibilityLevel.Normal or AccessibilityLevel.None
          local hb = has("hoverboots") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local trick = has("logic_forest_door_frame") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak

          return or_accessibility(
            and_accessibility(kill, AccessibilityLevel.Inspect),
            and_accessibility(balcony, or_accessibility(sot, and_accessibility(hb, trick)))
          )
        end
      },
      ["Forest Temple MQ GS Well"] = {
        ["child_access"] = function()
          if has("sling") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if (has("ironboots") and has("hookshot")) or has("bow") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["Forest Temple MQ Outdoors Top Ledges"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("hookshot") then
            if has("longshot") or has("hoverboots") or (has("ocarina") and has("time")) or has("logic_forest_vines") then
              return AccessibilityLevel.Normal
            end
            return AccessibilityLevel.SequenceBreak
          end
          return AccessibilityLevel.None
        end
      },
      ["Forest Temple MQ NE Outdoors Ledge"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("longshot") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Forest Temple MQ Outdoors Top Ledges"] = {
    ["scene"] = "Forest Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Forest Temple MQ Raised Island Courtyard Upper Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["Forest Temple MQ NE Outdoors"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Forest Temple MQ NE Outdoors Ledge"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("hoverboots") then
            if has("logic_forest_outdoors_ledge") then
              return AccessibilityLevel.Normal
            end
            return AccessibilityLevel.SequenceBreak
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Forest Temple MQ NE Outdoors Ledge"] = {
    ["scene"] = "Forest Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Forest Temple MQ Raised Island Courtyard Lower Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["Forest Temple MQ NE Outdoors"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Forest Temple MQ Falling Room"] = {
        ["child_access"] = function()
          if has("ocarina") and has("time") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("ocarina") and has("time") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Forest Temple MQ Bow Region"] = {
    ["scene"] = "Forest Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Forest Temple MQ Bow Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Forest Temple MQ Map Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("bow") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["Forest Temple MQ Compass Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("bow") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["Forest Temple MQ Falling Room"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("forest_small_keys", 5) and (has("bow") or (has("dinsfire") and has("magic"))) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Forest Temple MQ Falling Room"] = {
    ["scene"] = "Forest Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Forest Temple MQ Falling Ceiling Room Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["Forest Temple MQ NE Outdoors Ledge"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Forest Temple MQ Boss Region"] = {
    ["scene"] = "Forest Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Forest Temple MQ Basement Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Phantom Ganon"] = {
        ["child_access"] = function()
          if has("forest_boss_key") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("forest_boss_key") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Ganons Castle Split"] = {
    ["scene"] = "Ganons Castle",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["exits"] = {
      ["Ganons Castle Lobby"] = {
        ["child_access"] = function()
          if has("gc_reg") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("gc_reg") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["Ganons Castle MQ Lobby"] = {
        ["child_access"] = function()
          if has("gc_mq") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("gc_mq") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Ganons Castle Lobby"] = {
    ["scene"] = "Ganons Castle",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["exits"] = {
      ["Castle Grounds"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Ganons Castle Forest Trial"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Ganons Castle Fire Trial"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Ganons Castle Water Trial"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Ganons Castle Shadow Trial"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Ganons Castle Spirit Trial"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Ganons Castle Light Trial"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("lift3") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["Ganons Castle Tower"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return trials_barrier_dispelled()
        end
      },
      ["Ganons Castle Deku Scrubs"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          if has("logic_lens_castle") or (has("lens") and has("magic")) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.SequenceBreak
        end
      }
    }
  },
  ["Ganons Castle Deku Scrubs"] = {
    ["scene"] = "Ganons Castle",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Ganons Castle Deku Scrubs"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Ganons Castle Forest Trial"] = {
    ["scene"] = "Ganons Castle",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Forest Trial Clear"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          local fa = has("firearrow") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local df = has("dinsfire") and AccessibilityLevel.Normal or AccessibilityLevel.None

          return and_accessibility(can_LA(), or_accessibility(fa, df))
        end
      },
      ["Ganons Castle Forest Trial Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Ganons Castle Fire Trial"] = {
    ["scene"] = "Ganons Castle",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Fire Trial Clear"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          local tunic = has("redtunic") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
          local lift3 = has("lift3") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local ls = has("longshot") and AccessibilityLevel.Normal or AccessibilityLevel.None

          return and_accessibility(tunic, lift3, can_LA(), ls)
        end
      }
    }
  },
  ["Ganons Castle Water Trial"] = {
    ["scene"] = "Ganons Castle",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Water Trial Clear"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          local hammer = has("hammer") and AccessibilityLevel.Normal or AccessibilityLevel.None

          return and_accessibility(has_blue_fire(), hammer, can_LA())
        end
      },
      ["Ganons Castle Water Trial Chests"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Ganons Castle Shadow Trial"] = {
    ["scene"] = "Ganons Castle",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Shadow Trial Clear"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          local hammer = has("hammer") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local fa = has("firearrow") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local lot =
            (has("logic_lens_castle") or (has("lens") and has("magic"))) and AccessibilityLevel.Normal or
            AccessibilityLevel.SequenceBreak
          local ls = has("longshot") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local hb = has("hoverboots") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local df = has("dinsfire") and AccessibilityLevel.Normal or AccessibilityLevel.None

          return and_accessibility(
            can_LA(),
            hammer,
            or_accessibility(
              and_accessibility(fa, lot),
              and_accessibility(ls, or_accessibility(hb, and_accessibility(df, lot)))
            )
          )
        end
      },
      ["Ganons Castle Shadow Trial Front Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if
            (has("bow") and has("firearrow") and has("magic")) or has("hookshot") or has("hoverboots") or
              (has("ocarina") and has("time"))
           then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["Ganons Castle Shadow Trial Golden Gauntlets Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if
            (has("bow") and has("firearrow") and has("magic")) or
              (has("longshot") and (has("hoverboots") or (has("dinsfire") and has("magic"))))
           then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Ganons Castle Spirit Trial"] = {
    ["scene"] = "Ganons Castle",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Spirit Trial Clear"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          local shield3 = has("shield3") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local trick =
            has("logic_spirit_trial_hookshot") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
          local hs = has("hookshot") and AccessibilityLevel.Normal or AccessibilityLevel.None

          return and_accessibility(can_LA(), shield3, has_bombchus(), or_accessibility(trick, hs))
        end
      },
      ["Ganons Castle Spirit Trial Crystal Switch Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("logic_spirit_trial_hookshot") or has("hookshot") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.SequenceBreak
        end
      },
      ["Ganons Castle Spirit Trial Invisible Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          local hs =
            (has("logic_spirit_trial_hookshot") or has("hookshot")) and AccessibilityLevel.Normal or
            AccessibilityLevel.SequenceBreak
          local lot =
            (has("logic_lens_castle") or (has("lens") and has("magic"))) and AccessibilityLevel.Normal or
            AccessibilityLevel.SequenceBreak
          return and_accessibility(hs, has_bombchus(), lot)
        end
      }
    }
  },
  ["Ganons Castle Light Trial"] = {
    ["scene"] = "Ganons Castle",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Light Trial Clear"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          local hs = has("hookshot") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local keys = has("gc_small_keys", 2) and AccessibilityLevel.Normal or AccessibilityLevel.None
          local lot =
            (has("logic_lens_castle") or (has("lens") and has("magic"))) and AccessibilityLevel.Normal or
            AccessibilityLevel.SequenceBreak

          return and_accessibility(can_LA(), hs, keys, lot)
        end
      },
      ["Ganons Castle Light Trial Chests"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Ganons Castle Light Trial Invisible Enemies Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("logic_lens_castle") or (has("lens") and has("magic")) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.SequenceBreak
        end
      },
      ["Ganons Castle Light Trial Lullaby Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("ocarina") and has("lullaby") and has("gc_small_keys", 1) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Ganons Castle Tower"] = {
    ["scene"] = "Ganons Castle",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Ganons Tower Boss Key Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Ganons Castle MQ Lobby"] = {
    ["scene"] = "Ganons Castle",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["exits"] = {
      ["Castle Grounds"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Ganons Castle MQ Forest Trial"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Ganons Castle MQ Fire Trial"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Ganons Castle MQ Water Trial"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Ganons Castle MQ Shadow Trial"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Ganons Castle MQ Spirit Trial"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Ganons Castle MQ Light Trial"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("lift3") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["Ganons Castle MQ Tower"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return trials_barrier_dispelled()
        end
      },
      ["Ganons Castle MQ Deku Scrubs"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          if has("logic_lens_castle_mq") or (has("lens") and has("magic")) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.SequenceBreak
        end
      }
    }
  },
  ["Ganons Castle MQ Deku Scrubs"] = {
    ["scene"] = "Ganons Castle",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Ganons Castle MQ Deku Scrubs"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Ganons Castle MQ Forest Trial"] = {
    ["scene"] = "Ganons Castle",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["MQ Forest Trial Clear"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          local sot = (has("ocarina") and has("time")) and AccessibilityLevel.Normal or AccessibilityLevel.None

          return and_accessibility(can_LA(), sot)
        end
      },
      ["Ganons Castle MQ Forest Trial Eye Switch Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("bow") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["Ganons Castle MQ Forest Trial Frozen Eye Switch Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return has_fire()
        end
      },
      ["Ganons Castle MQ Forest Trial Freestanding Key"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("hookshot") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.Inspect
        end
      }
    }
  },
  ["Ganons Castle MQ Fire Trial"] = {
    ["scene"] = "Ganons Castle",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["MQ Fire Trial Clear"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          local tunic = has("redtunic") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
          local lift3 = has("lift3") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local ls = has("longshot") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local hb = has("hoverboots") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local trick = has("logic_fire_trial_mq") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
          local hs = has("hookshot") and AccessibilityLevel.Normal or AccessibilityLevel.None

          return and_accessibility(tunic, lift3, can_LA(), or_accessibility(ls, hb, and_accessibility(trick, hs)))
        end
      }
    }
  },
  ["Ganons Castle MQ Water Trial"] = {
    ["scene"] = "Ganons Castle",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["MQ Water Trial Clear"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          local keys = AccessibilityLevel.None
          if has("gc_small_keys", 3) then
            keys = AccessibilityLevel.Normal
          elseif has("gc_small_keys", 1) then
            keys = AccessibilityLevel.SequenceBreak
          end

          return and_accessibility(has_blue_fire(), can_LA(), keys)
        end
      },
      ["Ganons Castle MQ Water Trial Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return has_bottle()
        end
      }
    }
  },
  ["Ganons Castle MQ Shadow Trial"] = {
    ["scene"] = "Ganons Castle",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["MQ Shadow Trial Clear"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          local lot =
            (has("logic_lens_castle_mq") or (has("lens") and has("magic"))) and AccessibilityLevel.Normal or
            AccessibilityLevel.SequenceBreak
          local hb = has("hoverboots") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local hs = has("hookshot") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local trick = has("logic_shadow_trial_mq") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak

          return and_accessibility(
            can_LA(),
            lot,
            or_accessibility(hb, and_accessibility(hs, or_accessibility(has_fire(), trick)))
          )
        end
      },
      ["Ganons Castle MQ Shadow Trial Bomb Flower Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("bow") and (has("hookshot") and has("hoverboots")) then
            return AccessibilityLevel.Normal
          elseif has("hoverboots") then
            local lot =
              (has("logic_lens_castle_mq") or (has("lens") and has("magic"))) and AccessibilityLevel.Normal or
              AccessibilityLevel.SequenceBreak
            local lift = has("lift1") and AccessibilityLevel.Normal or AccessibilityLevel.None
            local df = (has("dinsfire") and has("magic")) and AccessibilityLevel.Normal or AccessibilityLevel.None
            return and_accessibility(lot, or_accessibility(has_explosives(), lift, df))
          end
          return AccessibilityLevel.None
        end
      },
      ["Ganons Castle MQ Shadow Trial Eye Switch Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("bow") then
            local lot =
              (has("logic_lens_castle_mq") or (has("lens") and has("magic"))) and AccessibilityLevel.Normal or
              AccessibilityLevel.SequenceBreak
            local hb = has("hoverboots") and AccessibilityLevel.Normal or AccessibilityLevel.None
            local hs = has("hookshot") and AccessibilityLevel.Normal or AccessibilityLevel.None
            local trick = has("logic_shadow_trial_mq") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
            return and_accessibility(
              lot,
              or_accessibility(hb, and_accessibility(hs, or_accessibility(has_fire(), trick)))
            )
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Ganons Castle MQ Spirit Trial"] = {
    ["scene"] = "Ganons Castle",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["MQ Spirit Trial Clear"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          local hammer = has("hammer") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local fa = has("firearrow") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local shield3 = has("shield3") and AccessibilityLevel.Normal or AccessibilityLevel.None

          return and_accessibility(can_LA(), hammer, has_bombchus(), fa, shield3)
        end
      },
      ["Ganons Castle MQ Spirit Trial First Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("hammer") then
            if has("bow") or has("logic_rusted_switches") then
              return AccessibilityLevel.Normal
            end
            return AccessibilityLevel.SequenceBreak
          end
          return AccessibilityLevel.None
        end
      },
      ["Ganons Castle MQ Spirit Trial Invisible Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("hammer") then
            local bow =
              (has("bow") or has("logic_rusted_switches")) and AccessibilityLevel.Normal or
              AccessibilityLevel.SequenceBreak
            local lot =
              (has("logic_lens_castle_mq") or (has("lens") and has("magic"))) and AccessibilityLevel.Normal or
              AccessibilityLevel.SequenceBreak
            return and_accessibility(bow, has_bombchus(), lot)
          end
          return AccessibilityLevel.None
        end
      },
      ["Ganons Castle MQ Spirit Trial Sun Chests"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("hammer") and (has("bow") and has("firearrow") and has("magic")) and has("shield3") then
            return has_bombchus()
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Ganons Castle MQ Light Trial"] = {
    ["scene"] = "Ganons Castle",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["MQ Light Trial Clear"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          local keys = AccessibilityLevel.None
          if has("gc_small_keys", 3) then
            keys = AccessibilityLevel.Normal
          elseif has("gc_small_keys", 2) then
            keys = AccessibilityLevel.SequenceBreak
          end
          local lot =
            (has("logic_lens_castle_mq") or (has("lens") and has("magic"))) and AccessibilityLevel.Normal or
            AccessibilityLevel.SequenceBreak
          local hs = has("hookshot") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local trick = has("logic_light_trial_mq") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak

          return and_accessibility(can_LA(), keys, lot, or_accessibility(hs, trick))
        end
      },
      ["Ganons Castle MQ Light Trial Lullaby Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("ocarina") and has("lullaby") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Ganons Castle MQ Tower"] = {
    ["scene"] = "Ganons Castle",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Ganons Tower Boss Key Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Gerudo Training Ground Split"] = {
    ["scene"] = "Gerudo Training Ground",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["exits"] = {
      ["Gerudo Training Ground Lobby"] = {
        ["child_access"] = function()
          if has("gtg_reg") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("gtg_reg") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["Gerudo Training Ground MQ Lobby"] = {
        ["child_access"] = function()
          if has("gtg_mq") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("gtg_mq") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Gerudo Training Ground Lobby"] = {
    ["scene"] = "Gerudo Training Ground",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Gerudo Training Ground Lobby Chests"] = {
        ["child_access"] = function()
          if has("sling") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("bow") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["Gerudo Training Ground Stalfos Chest"] = {
        ["child_access"] = function()
          if has("sword1") then
            return AccessibilityLevel.Normal
          elseif has("sticks") then
            return AccessibilityLevel.SequenceBreak
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Gerudo Training Ground Beamos Chest"] = {
        ["child_access"] = function()
          local weapon = AccessibilityLevel.None
          if has("sword1") then
            weapon = AccessibilityLevel.Normal
          elseif has("sticks") then
            weapon = AccessibilityLevel.SequenceBreak
          end
          return and_accessibility(has_explosives(), weapon)
        end,
        ["adult_access"] = function()
          return has_explosives()
        end
      }
    },
    ["exits"] = {
      ["Gerudo Fortress"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Gerudo Training Ground Heavy Block Room"] = {
        ["child_access"] = function()
          if has("sword1") and has("logic_gtg_without_hookshot") then
            return AccessibilityLevel.Normal
          elseif has("sword1") or has("sticks") then
            return AccessibilityLevel.SequenceBreak
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("hookshot") or has("logic_gtg_without_hookshot") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.SequenceBreak
        end
      },
      ["Gerudo Training Ground Lava Room"] = {
        ["child_access"] = function()
          local explo = has_explosives()
          if has("sword1") or (access_region("Gerudo Training Ground Lobby", "adult") == AccessibilityLevel.Normal) then
            return explo
          end
          if has("sticks") and explo ~= AccessibilityLevel.None then
            return AccessibilityLevel.SequenceBreak
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return has_explosives()
        end
      },
      ["Gerudo Training Ground Central Maze"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Gerudo Training Ground Central Maze"] = {
    ["scene"] = "Gerudo Training Ground",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Gerudo Training Ground Hidden Ceiling Chest"] = {
        ["child_access"] = function()
          local lot =
            (has("logic_lens_gtg") or (has("lens") and has("magic"))) and AccessibilityLevel.Normal or
            AccessibilityLevel.SequenceBreak
          local keys = AccessibilityLevel.None
          if has("gtg_small_keys", 3) then
            keys = AccessibilityLevel.Normal
          elseif has("gtg_small_keys", 1) then
            keys = AccessibilityLevel.SequenceBreak
          end
          return and_accessibility(keys, lot)
        end,
        ["adult_access"] = function()
          local lot =
            (has("logic_lens_gtg") or (has("lens") and has("magic"))) and AccessibilityLevel.Normal or
            AccessibilityLevel.SequenceBreak
          local keys = AccessibilityLevel.None
          if has("gtg_small_keys", 3) then
            keys = AccessibilityLevel.Normal
          elseif has("gtg_small_keys", 1) then
            keys = AccessibilityLevel.SequenceBreak
          end
          return and_accessibility(keys, lot)
        end
      },
      ["Gerudo Training Ground Maze Path First Chest"] = {
        ["child_access"] = function()
          if has("gtg_small_keys", 4) then
            return AccessibilityLevel.Normal
          elseif has("gtg_small_keys", 2) then
            return AccessibilityLevel.SequenceBreak
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("gtg_small_keys", 4) then
            return AccessibilityLevel.Normal
          elseif has("gtg_small_keys", 2) then
            return AccessibilityLevel.SequenceBreak
          end
          return AccessibilityLevel.None
        end
      },
      ["Gerudo Training Ground Maze Path Second Chest"] = {
        ["child_access"] = function()
          if has("gtg_small_keys", 6) then
            return AccessibilityLevel.Normal
          elseif has("gtg_small_keys", 4) then
            return AccessibilityLevel.SequenceBreak
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("gtg_small_keys", 6) then
            return AccessibilityLevel.Normal
          elseif has("gtg_small_keys", 4) then
            return AccessibilityLevel.SequenceBreak
          end
          return AccessibilityLevel.None
        end
      },
      ["Gerudo Training Ground Maze Path Third Chest"] = {
        ["child_access"] = function()
          if has("gtg_small_keys", 7) then
            return AccessibilityLevel.Normal
          elseif has("gtg_small_keys", 5) then
            return AccessibilityLevel.SequenceBreak
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("gtg_small_keys", 7) then
            return AccessibilityLevel.Normal
          elseif has("gtg_small_keys", 5) then
            return AccessibilityLevel.SequenceBreak
          end
          return AccessibilityLevel.None
        end
      },
      ["Gerudo Training Ground Maze Path Final Chest"] = {
        ["child_access"] = function()
          if has("gtg_small_keys", 9) then
            return AccessibilityLevel.Normal
          elseif has("gtg_small_keys", 7) then
            return AccessibilityLevel.SequenceBreak
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("gtg_small_keys", 9) then
            return AccessibilityLevel.Normal
          elseif has("gtg_small_keys", 7) then
            return AccessibilityLevel.SequenceBreak
          end
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["Gerudo Training Ground Central Maze Right"] = {
        ["child_access"] = function()
          if has("gtg_small_keys", 9) then
            return AccessibilityLevel.Normal
          elseif has("gtg_small_keys", 2) then
            return AccessibilityLevel.SequenceBreak
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("gtg_small_keys", 9) then
            return AccessibilityLevel.Normal
          elseif has("gtg_small_keys", 2) then
            return AccessibilityLevel.SequenceBreak
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Gerudo Training Ground Central Maze Right"] = {
    ["scene"] = "Gerudo Training Ground",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Gerudo Training Ground Maze Right Chests"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Gerudo Training Ground Freestanding Key"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["Gerudo Training Ground Hammer Room"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("hookshot") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["Gerudo Training Ground Lava Room"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Gerudo Training Ground Lava Room"] = {
    ["scene"] = "Gerudo Training Ground",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Gerudo Training Ground Underwater Silver Rupee Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("hookshot") and has("ocarina") and has("time") and has("ironboots") then
            return FTR_or_zora()
          end
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["Gerudo Training Ground Central Maze Right"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          if has("ocarina") and has("time") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["Gerudo Training Ground Hammer Room"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("longshot") or (has("hookshot") and has("hoverboots")) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Gerudo Training Ground Hammer Room"] = {
    ["scene"] = "Gerudo Training Ground",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Gerudo Training Ground Hammer Room Clear Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Gerudo Training Ground Hammer Room Switch Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("hammer") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.SequenceBreak
        end
      }
    },
    ["exits"] = {
      ["Gerudo Training Ground Eye Statue Lower"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("hammer") and has("bow") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["Gerudo Training Ground Lava Room"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Gerudo Training Ground Eye Statue Lower"] = {
    ["scene"] = "Gerudo Training Ground",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Gerudo Training Ground Eye Statue Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("bow") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["Gerudo Training Ground Hammer Room"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Gerudo Training Ground Eye Statue Upper"] = {
    ["scene"] = "Gerudo Training Ground",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Gerudo Training Ground Near Scarecrow Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("bow") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["Gerudo Training Ground Eye Statue Lower"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Gerudo Training Ground Heavy Block Room"] = {
    ["scene"] = "Gerudo Training Ground",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Gerudo Training Ground Before Heavy Block Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["Gerudo Training Ground Eye Statue Upper"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          local wall =
            (has("logic_lens_gtg") or (has("lens") and has("magic"))) and AccessibilityLevel.Normal or
            AccessibilityLevel.SequenceBreak

          local climb = AccessibilityLevel.None
          if has("hookshot") then
            climb = AccessibilityLevel.Normal
          elseif has("hoverboots") then
            if has("logic_gtg_fake_wall") then
              climb = AccessibilityLevel.Normal
            else
              climb = AccessibilityLevel.SequenceBreak
            end
          elseif has("bombs") and (has("shield2") or has("shield3")) then
            climb = AccessibilityLevel.SequenceBreak
          end

          return and_accessibility(wall, climb)
        end
      },
      ["Gerudo Training Ground Like Like Room"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("lift2") then
            local wall =
              (has("logic_lens_gtg") or (has("lens") and has("magic"))) and AccessibilityLevel.Normal or
              AccessibilityLevel.SequenceBreak

            local climb = AccessibilityLevel.None
            if has("hookshot") then
              climb = AccessibilityLevel.Normal
            elseif has("hoverboots") then
              if has("logic_gtg_fake_wall") then
                climb = AccessibilityLevel.Normal
              else
                climb = AccessibilityLevel.SequenceBreak
              end
            elseif has("bombs") and (has("shield2") or has("shield3")) then
              climb = AccessibilityLevel.SequenceBreak
            end

            return and_accessibility(wall, climb)
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Gerudo Training Ground Like Like Room"] = {
    ["scene"] = "Gerudo Training Ground",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Gerudo Training Ground Heavy Block Chests"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Gerudo Training Ground MQ Lobby"] = {
    ["scene"] = "Gerudo Training Ground",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Gerudo Training Ground MQ Lobby Chests"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Gerudo Training Ground MQ Hidden Ceiling Chest"] = {
        ["child_access"] = function()
          if has("logic_lens_gtg_mq") or (has("lens") and has("magic")) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.SequenceBreak
        end,
        ["adult_access"] = function()
          if has("logic_lens_gtg_mq") or (has("lens") and has("magic")) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.SequenceBreak
        end
      },
      ["Gerudo Training Ground MQ Maze Path First Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Gerudo Training Ground MQ Maze Path Second Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Gerudo Training Ground MQ Maze Path Third Chest"] = {
        ["child_access"] = function()
          if has("gtg_small_keys", 1) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("gtg_small_keys", 1) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["Gerudo Fortress"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Gerudo Training Ground MQ Left Side"] = {
        ["child_access"] = function()
          if has("dinsfire") and has("magic") then
            return AccessibilityLevel.Normal
          end
          if has("bow") and has("firearrow") and has("magic") then
            return access_region("Gerudo Training Ground MQ Lobby", "adult")
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return has_fire()
        end
      },
      ["Gerudo Training Ground MQ Right Side"] = {
        ["child_access"] = function()
          if has("sling") then
            return AccessibilityLevel.Normal
          end
          if has("bow") then
            return access_region("Gerudo Training Ground MQ Lobby", "adult")
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("bow") then
            return AccessibilityLevel.Normal
          end
          if has("sling") then
            return access_region("Gerudo Training Ground MQ Lobby", "child")
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Gerudo Training Ground MQ Right Side"] = {
    ["scene"] = "Gerudo Training Ground",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Gerudo Training Ground MQ Dinolfos Chest"] = {
        ["child_access"] = function()
          if has("sticks") then
            return AccessibilityLevel.SequenceBreak
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["Gerudo Training Ground MQ Underwater"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if (has("bow") or has("longshot")) and has("hoverboots") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Gerudo Training Ground MQ Underwater"] = {
    ["scene"] = "Gerudo Training Ground",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Gerudo Training Ground MQ Underwater Silver Rupee Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("ironboots") then
            return and_accessibility(has_fire(), FTR_or_zora(), damage_single_instance_ohko())
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Gerudo Training Ground MQ Left Side"] = {
    ["scene"] = "Gerudo Training Ground",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Gerudo Training Ground MQ First Iron Knuckle Chest"] = {
        ["child_access"] = function()
          local weapon = AccessibilityLevel.None
          if has("sword1") then
            weapon = AccessibilityLevel.Normal
          elseif has("sticks") then
            weapon = AccessibilityLevel.SequenceBreak
          end
          return or_accessibility(has_explosives(), weapon)
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["Gerudo Training Ground MQ Stalfos Room"] = {
        ["child_access"] = function()
          if has("logic_gtg_mq_without_hookshot") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.SequenceBreak
        end,
        ["adult_access"] = function()
          if
            has("longshot") or has("logic_gtg_mq_without_hookshot") or
              (has("logic_gtg_mq_with_hookshot") and has("hookshot"))
           then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.SequenceBreak
        end
      }
    }
  },
  ["Gerudo Training Ground MQ Stalfos Room"] = {
    ["scene"] = "Gerudo Training Ground",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Gerudo Training Ground MQ Before Heavy Block Chest"] = {
        ["child_access"] = function()
          if has("sticks") then
            return AccessibilityLevel.SequenceBreak
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Gerudo Training Ground MQ Heavy Block Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("lift2") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["Gerudo Training Ground MQ Back Areas"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          local lot =
            (has("logic_lens_gtg_mq") or (has("lens") and has("magic"))) and AccessibilityLevel.Normal or
            AccessibilityLevel.SequenceBreak
          local sot = (has("ocarina") and has("time")) and AccessibilityLevel.Normal or AccessibilityLevel.None

          local wall = AccessibilityLevel.None
          if has("hoverboots") then
            if has("logic_gtg_fake_wall") then
              wall = AccessibilityLevel.Normal
            else
              wall = AccessibilityLevel.SequenceBreak
            end
          end

          return and_accessibility(lot, has_bottle(), or_accessibility(sot, wall))
        end
      }
    }
  },
  ["Gerudo Training Ground MQ Back Areas"] = {
    ["scene"] = "Gerudo Training Ground",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Gerudo Training Ground MQ Eye Statue Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("bow") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["Gerudo Training Ground MQ Second Iron Knuckle Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Gerudo Training Ground MQ Flame Circle Chest"] = {
        ["child_access"] = function()
          return has_explosives()
        end,
        ["adult_access"] = function()
          if has("hookshot") or has("bow") then
            return AccessibilityLevel.Normal
          end
          return has_explosives()
        end
      }
    },
    ["exits"] = {
      ["Gerudo Training Ground MQ Central Maze Right"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("hammer") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["Gerudo Training Ground MQ Right Side"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("longshot") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Gerudo Training Ground MQ Central Maze Right"] = {
    ["scene"] = "Gerudo Training Ground",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Gerudo Training Ground MQ Maze Right Chests"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Gerudo Training Ground MQ Ice Arrows Chest"] = {
        ["child_access"] = function()
          if has("gtg_small_keys", 3) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("gtg_small_keys", 3) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["Gerudo Training Ground MQ Underwater"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("longshot") or (has("hookshot") and has("bow")) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["Gerudo Training Ground MQ Right Side"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("hookshot") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Ice Cavern Split"] = {
    ["scene"] = "Ice Cavern",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["exits"] = {
      ["Ice Cavern Beginning"] = {
        ["child_access"] = function()
          if has("ice_reg") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("ice_reg") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["Ice Cavern MQ Beginning"] = {
        ["child_access"] = function()
          if has("ice_mq") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("ice_mq") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Ice Cavern Beginning"] = {
    ["scene"] = "Ice Cavern",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["exits"] = {
      ["ZF Ice Ledge"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Ice Cavern"] = {
        ["child_access"] = function()
          if has("dinsfire") and has("magic") then
            return AccessibilityLevel.Normal
          end
          return or_accessibility(access_region("Ice Cavern Beginning", "adult"), has_explosives())
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Ice Cavern"] = {
    ["scene"] = "Ice Cavern",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Ice Cavern Map Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return has_bottle()
        end
      },
      ["Ice Cavern Compass Chest"] = {
        ["child_access"] = function()
          return has_blue_fire()
        end,
        ["adult_access"] = function()
          return has_bottle()
        end
      },
      ["Ice Cavern Iron Boots Chest"] = {
        ["child_access"] = function()
          if has("sling") or has("sticks") or has("sword1") or (has("dinsfire") and has("magic")) then
            return has_blue_fire()
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return has_bottle()
        end
      },
      ["Sheik in Ice Cavern"] = {
        ["child_access"] = function()
          if has("sling") or has("sticks") or has("sword1") or (has("dinsfire") and has("magic")) then
            return has_blue_fire()
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return has_bottle()
        end
      },
      ["Ice Cavern Freestanding PoH"] = {
        ["child_access"] = function()
          return has_blue_fire()
        end,
        ["adult_access"] = function()
          return has_bottle()
        end
      },
      ["Ice Cavern GS Spinning Scythe Room"] = {
        ["child_access"] = function()
          local kill = has_explosives()
          if has("boomerang") or has("sling") or (has("dinsfire") and has("magic")) then
            kill = AccessibilityLevel.Normal
          end
          local collect = has("boomerang") and AccessibilityLevel.Normal or AccessibilityLevel.Inspect

          return and_accessibility(kill, collect)
        end,
        ["adult_access"] = function()
          local kill = has_explosives()
          if has("hookshot") or has("bow") or (has("dinsfire") and has("magic")) then
            kill = AccessibilityLevel.Normal
          end
          local collect = has("hookshot") and AccessibilityLevel.Normal or AccessibilityLevel.Inspect

          return and_accessibility(kill, collect)
        end
      },
      ["Ice Cavern GS Heart Piece Room"] = {
        ["child_access"] = function()
          local kill = has_explosives()
          if has("boomerang") or has("sling") or (has("dinsfire") and has("magic")) then
            kill = AccessibilityLevel.Normal
          end
          local collect = has("boomerang") and AccessibilityLevel.Normal or AccessibilityLevel.Inspect

          return and_accessibility(has_blue_fire(), kill, collect)
        end,
        ["adult_access"] = function()
          local kill = has_explosives()
          if has("hookshot") or has("bow") or (has("dinsfire") and has("magic")) then
            kill = AccessibilityLevel.Normal
          end
          local collect = has("hookshot") and AccessibilityLevel.Normal or AccessibilityLevel.Inspect

          return and_accessibility(has_bottle(), kill, collect)
        end
      },
      ["Ice Cavern GS Push Block Room"] = {
        ["child_access"] = function()
          local kill = has_explosives()
          if has("boomerang") or has("sling") or (has("dinsfire") and has("magic")) then
            kill = AccessibilityLevel.Normal
          end
          local collect = has("boomerang") and AccessibilityLevel.Normal or AccessibilityLevel.Inspect

          return and_accessibility(has_blue_fire(), kill, collect)
        end,
        ["adult_access"] = function()
          if has("hookshot") then
            return has_bottle()
          end

          local kill = has_explosives()
          if has("bow") or (has("dinsfire") and has("magic")) then
            kill = AccessibilityLevel.Normal
          end
          local hb = has("hoverboots") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local trick = has("logic_ice_block_gs") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak

          return and_accessibility(
            has_bottle(),
            or_accessibility(and_accessibility(hb, trick), and_accessibility(kill, AccessibilityLevel.Inspect))
          )
        end
      }
    }
  },
  ["Ice Cavern MQ Beginning"] = {
    ["scene"] = "Ice Cavern",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["exits"] = {
      ["ZF Ice Ledge"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Ice Cavern MQ Map Room"] = {
        ["child_access"] = function()
          if has("dinsfire") and has("magic") then
            return AccessibilityLevel.Normal
          end
          if has("sticks") or has("sling") or has("sword1") then
            return has_explosives()
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Ice Cavern MQ Compass Room"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return has_bottle()
        end
      },
      ["Ice Cavern MQ Iron Boots Region"] = {
        ["child_access"] = function()
          return has_blue_fire()
        end,
        ["adult_access"] = function()
          return has_bottle()
        end
      }
    }
  },
  ["Ice Cavern MQ Map Room"] = {
    ["scene"] = "Ice Cavern",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Ice Cavern MQ Map Chest"] = {
        ["child_access"] = function()
          if has("sticks") or has("sword1") then
            return has_bottle()
          end
          return and_accessibility(has_bottle(), has_projectile("child"))
        end,
        ["adult_access"] = function()
          return has_bottle()
        end
      }
    }
  },
  ["Ice Cavern MQ Iron Boots Region"] = {
    ["scene"] = "Ice Cavern",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Ice Cavern MQ Iron Boots Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Sheik in Ice Cavern"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Ice Cavern MQ GS Ice Block"] = {
        ["child_access"] = function()
          return can_child_attack()
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Ice Cavern MQ GS Scarecrow"] = {
        ["child_access"] = function()
          if has("sling") or has_bombchus() ~= AccessibilityLevel.None then
            return AccessibilityLevel.Inspect
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          local hb = has("hoverboots") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local ls = has("longshot") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local trick = has("logic_ice_mq_scarecrow") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak

          return or_accessibility(can_use_scarecrow(), and_accessibility(hb, ls), trick)
        end
      }
    }
  },
  ["Ice Cavern MQ Compass Room"] = {
    ["scene"] = "Ice Cavern",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Ice Cavern MQ Compass Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Ice Cavern MQ Freestanding PoH"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return or_accessibility(has_explosives(), AccessibilityLevel.Inspect)
        end
      },
      ["Ice Cavern MQ GS Red Ice"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if (has("ocarina") and has("time")) or has("logic_ice_mq_red_ice_gs") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.SequenceBreak
        end
      }
    }
  },
  ["Jabu Jabus Belly Split"] = {
    ["scene"] = "Jabu Jabus Belly",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["exits"] = {
      ["Jabu Jabus Belly Beginning"] = {
        ["child_access"] = function()
          if has("jabu_reg") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("jabu_reg") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["Jabu Jabus Belly MQ Beginning"] = {
        ["child_access"] = function()
          if has("jabu_mq") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("jabu_mq") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Jabu Jabus Belly Beginning"] = {
    ["scene"] = "Jabu Jabus Belly",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["exits"] = {
      ["Zoras Fountain"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Jabu Jabus Belly Main"] = {
        ["child_access"] = function()
          return has_projectile("child")
        end,
        ["adult_access"] = function()
          return has_projectile("adult")
        end
      }
    }
  },
  ["Jabu Jabus Belly Main"] = {
    ["scene"] = "Jabu Jabus Belly",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Jabu Jabus Belly Boomerang Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Jabu Jabus Belly GS Water Switch Room"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Jabu Jabus Belly GS Lobby Basement Lower"] = {
        ["child_access"] = function()
          if has("boomerang") then
            return AccessibilityLevel.Normal
          end
          if has("sling") or has_bombchus() ~= AccessibilityLevel.None then
            return AccessibilityLevel.Inspect
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          local kill = has_explosives()
          if has("hookshot") or has("bow") then
            kill = AccessibilityLevel.Normal
          end
          local collect = has("hookshot") and AccessibilityLevel.Normal or AccessibilityLevel.Inspect

          return and_accessibility(kill, collect)
        end
      },
      ["Jabu Jabus Belly GS Lobby Basement Upper"] = {
        ["child_access"] = function()
          if has("boomerang") then
            return AccessibilityLevel.Normal
          end
          if has("sling") or has_bombchus() ~= AccessibilityLevel.None then
            return AccessibilityLevel.Inspect
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          local kill = has_explosives()
          if has("hookshot") or has("bow") then
            kill = AccessibilityLevel.Normal
          end
          local collect = has("hookshot") and AccessibilityLevel.Normal or AccessibilityLevel.Inspect

          return and_accessibility(kill, collect)
        end
      },
      ["Jabu Jabus Belly Deku Scrub"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          if has("scale") or has("logic_jabu_scrub_jump_dive") or has("ironboots") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.SequenceBreak
        end
      }
    },
    ["exits"] = {
      ["Jabu Jabus Belly Beginning"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Jabu Jabus Belly Depths"] = {
        ["child_access"] = function()
          if has("boomerang") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["Jabu Jabus Belly Boss Area"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("hoverboots") then
            if has("logic_jabu_boss_gs_adult") then
              return AccessibilityLevel.Normal
            end
            return AccessibilityLevel.SequenceBreak
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Jabu Jabus Belly Depths"] = {
    ["scene"] = "Jabu Jabus Belly",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Jabu Jabus Belly Map Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Jabu Jabus Belly Compass Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["Jabu Jabus Belly Main"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Jabu Jabus Belly Boss Area"] = {
        ["child_access"] = function()
          if has("sticks") or has("sword1") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Jabu Jabus Belly Boss Area"] = {
    ["scene"] = "Jabu Jabus Belly",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Barinade"] = {
        ["child_access"] = function()
          if has("boomerang") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["Jabu Jabus Belly GS Near Boss"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["Jabu Jabus Belly Main"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Jabu Jabus Belly MQ Beginning"] = {
    ["scene"] = "Jabu Jabus Belly",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Jabu Jabus Belly MQ Map Chest"] = {
        ["child_access"] = function()
          return has_explosives()
        end,
        ["adult_access"] = function()
          return can_blast()
        end
      },
      ["Jabu Jabus Belly MQ First Room Side Chest"] = {
        ["child_access"] = function()
          if has("sling") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["Zoras Fountain"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Jabu Jabus Belly MQ Main"] = {
        ["child_access"] = function()
          if has("sling") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("sling") then
            return access_region("Jabu Jabus Belly MQ Beginning", "child")
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Jabu Jabus Belly MQ Main"] = {
    ["scene"] = "Jabu Jabus Belly",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Jabu Jabus Belly MQ Second Room Lower Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Jabu Jabus Belly MQ Second Room Upper Chest"] = {
        ["child_access"] = function()
          return access_region("Jabu Jabus Belly MQ Boss Area", "child")
        end,
        ["adult_access"] = function()
          if has("hoverboots") or has("hookshot") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["Jabu Jabus Belly MQ Compass Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Jabu Jabus Belly MQ Basement Chests"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Jabu Jabus Belly MQ Boomerang Room Chests"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Jabu Jabus Belly MQ GS Boomerang Chest Room"] = {
        ["child_access"] = function()
          if has("ocarina") and has("time") then
            return AccessibilityLevel.Normal
          elseif has("boomerang") then
            if has("logic_jabu_mq_sot_gs") then
              return AccessibilityLevel.Normal
            end
            return AccessibilityLevel.SequenceBreak
          end
          return AccessibilityLevel.Inspect
        end,
        ["adult_access"] = function()
          if has("ocarina") and has("time") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.Inspect
        end
      }
    },
    ["exits"] = {
      ["Jabu Jabus Belly MQ Beginning"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Jabu Jabus Belly MQ Depths"] = {
        ["child_access"] = function()
          if has("boomerang") then
            return has_explosives()
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Jabu Jabus Belly MQ Depths"] = {
    ["scene"] = "Jabu Jabus Belly",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Jabu Jabus Belly MQ Falling Like Like Room Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["Jabu Jabus Belly MQ GS Tailpasaran Room"] = {
        ["child_access"] = function()
          if has("sticks") or (has("dinsfire") and has("magic")) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["Jabu Jabus Belly MQ GS Invisible Enemies Room"] = {
        ["child_access"] = function()
          local lot =
            (has("logic_lens_jabu_mq") or (has("lens") and has("magic"))) and AccessibilityLevel.Normal or
            AccessibilityLevel.SequenceBreak
          local adult = (has("hoverboots") or has("hookshot")) and AccessibilityLevel.Normal or AccessibilityLevel.None
          return or_accessibility(lot, and_accessibility(access_region("Jabu Jabus Belly MQ Main", "adult"), adult))
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["Jabu Jabus Belly MQ Main"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Jabu Jabus Belly MQ Boss Area"] = {
        ["child_access"] = function()
          if has("sticks") or (has("dinsfire") and has("magic") and has("sword1")) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Jabu Jabus Belly MQ Boss Area"] = {
    ["scene"] = "Jabu Jabus Belly",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Jabu Jabus Belly MQ Cow"] = {
        ["child_access"] = function()
          if has("ocarina") and has("epona") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["Jabu Jabus Belly MQ Near Boss Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["Barinade"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["Jabu Jabus Belly MQ GS Near Boss"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["Jabu Jabus Belly MQ Main"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Shadow Temple Split"] = {
    ["scene"] = "Shadow Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["exits"] = {
      ["Shadow Temple Entryway"] = {
        ["child_access"] = function()
          if has("shadow_reg") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("shadow_reg") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["Shadow Temple MQ Entryway"] = {
        ["child_access"] = function()
          if has("shadow_mq") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("shadow_mq") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Shadow Temple Entryway"] = {
    ["scene"] = "Shadow Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["exits"] = {
      ["Graveyard Warp Pad Region"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Shadow Temple Beginning"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("hoverboots") or has("hookshot") then
            if has("logic_lens_shadow") or (has("lens") and has("magic")) then
              return AccessibilityLevel.Normal
            end
            return AccessibilityLevel.SequenceBreak
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Shadow Temple Beginning"] = {
    ["scene"] = "Shadow Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Shadow Temple Map Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Shadow Temple Hover Boots Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["Shadow Temple Entryway"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Shadow Temple First Beamos"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("hoverboots") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Shadow Temple First Beamos"] = {
    ["scene"] = "Shadow Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Shadow Temple Compass Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Shadow Temple Early Silver Rupee Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["Shadow Temple Huge Pit"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("shadow_small_keys", 1) then
            return has_explosives()
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Shadow Temple Huge Pit"] = {
    ["scene"] = "Shadow Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Shadow Temple Invisible Blades Chests"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Shadow Temple Falling Spikes Lower Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Shadow Temple Falling Spikes Upper Chests"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("logic_shadow_umbrella") or has("lift1") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.SequenceBreak
        end
      },
      ["Shadow Temple Invisible Spikes Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("shadow_small_keys", 2) then
            if has("logic_lens_shadow_back") or (has("lens") and has("magic")) then
              return AccessibilityLevel.Normal
            end
            return AccessibilityLevel.SequenceBreak
          end
          return AccessibilityLevel.None
        end
      },
      ["Shadow Temple Freestanding Key"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          local keys = has("shadow_small_keys", 2) and AccessibilityLevel.Normal or AccessibilityLevel.None
          local lot =
            (has("logic_lens_shadow_back") or (has("lens") and has("magic"))) and AccessibilityLevel.Normal or
            AccessibilityLevel.SequenceBreak
          local hs = has("hookshot") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local bombs = has("bombs") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local lift1 = has("lift1") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local trick =
            has("logic_shadow_freestanding_key") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak

          return and_accessibility(
            keys,
            lot,
            hs,
            or_accessibility(bombs, lift1, and_accessibility(trick, has_bombchus()))
          )
        end
      },
      ["Shadow Temple GS Like Like Room"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Shadow Temple GS Falling Spikes Room"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("logic_shadow_umbrella_gs") or has("hookshot") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.SequenceBreak
        end
      },
      ["Shadow Temple GS Single Giant Pot"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          local keys = has("shadow_small_keys", 2) and AccessibilityLevel.Normal or AccessibilityLevel.None
          local lot =
            (has("logic_lens_shadow_back") or (has("lens") and has("magic"))) and AccessibilityLevel.Normal or
            AccessibilityLevel.SequenceBreak
          local hs = has("hookshot") and AccessibilityLevel.Normal or AccessibilityLevel.None

          return and_accessibility(keys, lot, hs)
        end
      }
    },
    ["exits"] = {
      ["Shadow Temple Wind Tunnel"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("shadow_small_keys", 3) and has("hookshot") then
            if has("logic_lens_shadow_back") or (has("lens") and has("magic")) then
              return AccessibilityLevel.Normal
            end
            return AccessibilityLevel.SequenceBreak
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Shadow Temple Wind Tunnel"] = {
    ["scene"] = "Shadow Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Shadow Temple Wind Hint Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Shadow Temple After Wind Chests"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Shadow Temple GS Near Ship"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          local keys = has("shadow_small_keys", 4) and AccessibilityLevel.Normal or AccessibilityLevel.None
          local ls = has("longshot") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local bow = has("bow") and AccessibilityLevel.Inspect or AccessibilityLevel.None

          return and_accessibility(
            keys,
            or_accessibility(ls, bow, and_accessibility(can_use_scarecrow(), AccessibilityLevel.SequenceBreak))
          )
        end
      }
    },
    ["exits"] = {
      ["Shadow Temple Beyond Boat"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("ocarina") and has("lullaby") and has("shadow_small_keys", 4) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Shadow Temple Beyond Boat"] = {
    ["scene"] = "Shadow Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Shadow Temple Spike Walls Left Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("dinsfire") and has("magic") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["Shadow Temple Boss Key Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("dinsfire") and has("magic") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["Shadow Temple Invisible Floormaster Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Bongo Bongo"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("shadow_small_keys", 5) and has("shadow_boss_key") then
            if has("bow") or (can_use_scarecrow() and has("longshot")) then
              return AccessibilityLevel.Normal
            end
            local trick = has("logic_shadow_statue") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
            return and_accessibility(trick, has_bombchus())
          end
          return AccessibilityLevel.None
        end
      },
      ["Shadow Temple GS Triple Giant Pot"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Shadow Temple MQ Entryway"] = {
    ["scene"] = "Shadow Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["exits"] = {
      ["Graveyard Warp Pad Region"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Shadow Temple MQ Beginning"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("hoverboots") or has("hookshot") then
            if has("logic_lens_shadow_mq") or (has("lens") and has("magic")) then
              return AccessibilityLevel.Normal
            end
            return AccessibilityLevel.SequenceBreak
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Shadow Temple MQ Beginning"] = {
    ["scene"] = "Shadow Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["exits"] = {
      ["Shadow Temple MQ Entryway"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Shadow Temple MQ First Beamos"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if (has("bow") and has("firearrow") and has("magic")) or has("hoverboots") then
            return AccessibilityLevel.Normal
          elseif has("longshot") then
            if has("logic_shadow_mq_gap") then
              return AccessibilityLevel.Normal
            end
            return AccessibilityLevel.SequenceBreak
          end
          return AccessibilityLevel.None
        end
      },
      ["Shadow Temple MQ Dead Hand Area"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          local keys = AccessibilityLevel.None
          if has("shadow_small_keys", 6) then
            keys = AccessibilityLevel.Normal
          elseif has("shadow_small_keys", 1) then
            keys = AccessibilityLevel.SequenceBreak
          end
          return and_accessibility(has_explosives(), keys)
        end
      }
    }
  },
  ["Shadow Temple MQ Dead Hand Area"] = {
    ["scene"] = "Shadow Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Shadow Temple MQ Compass Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Shadow Temple MQ Hover Boots Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("ocarina") and has("time") and has("bow") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Shadow Temple MQ First Beamos"] = {
    ["scene"] = "Shadow Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Shadow Temple MQ Map Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Shadow Temple MQ Early Gibdos Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Shadow Temple MQ Near Ship Invisible Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["Shadow Temple MQ Upper Huge Pit"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          local keys = AccessibilityLevel.None
          if has("shadow_small_keys", 2) then
            keys = AccessibilityLevel.Normal
          elseif has("shadow_small_keys", 1) then
            keys = AccessibilityLevel.SequenceBreak
          end
          return and_accessibility(has_explosives(), keys)
        end
      }
    }
  },
  ["Shadow Temple MQ Upper Huge Pit"] = {
    ["scene"] = "Shadow Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Shadow Temple MQ Invisible Blades Chests"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("ocarina") and has("time") then
            return AccessibilityLevel.Normal
          end
          local trick =
            has("logic_shadow_mq_invisible_blades") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
          return and_accessibility(trick, damage_below_ohko())
        end
      }
    },
    ["exits"] = {
      ["Shadow Temple MQ Lower Huge Pit"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          local trick =
            has("logic_shadow_mq_huge_pit") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
          return or_accessibility(has_fire(), trick)
        end
      }
    }
  },
  ["Shadow Temple MQ Lower Huge Pit"] = {
    ["scene"] = "Shadow Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Shadow Temple MQ Beamos Silver Rupees Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("longshot") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["Shadow Temple MQ Falling Spikes Lower Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Shadow Temple MQ Falling Spikes Upper Chests"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("lift1") then
            return AccessibilityLevel.Normal
          elseif has("hoverboots") then
            if has("logic_shadow_umbrella") then
              return AccessibilityLevel.Normal
            end
            return AccessibilityLevel.SequenceBreak
          end
          return AccessibilityLevel.None
        end
      },
      ["Shadow Temple MQ Invisible Spikes Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("hoverboots") then
            local keys = AccessibilityLevel.None
            if has("shadow_small_keys", 3) then
              keys = AccessibilityLevel.Normal
            elseif has("shadow_small_keys", 2) then
              keys = AccessibilityLevel.SequenceBreak
            end
            local lot =
              (has("logic_lens_shadow_mq_back") or (has("lens") and has("magic"))) and AccessibilityLevel.Normal or
              AccessibilityLevel.SequenceBreak
            return and_accessibility(keys, lot)
          end
          return AccessibilityLevel.None
        end
      },
      ["Shadow Temple MQ Stalfos Room Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("hoverboots") and has("hookshot") then
            local keys = AccessibilityLevel.None
            if has("shadow_small_keys", 3) then
              keys = AccessibilityLevel.Normal
            elseif has("shadow_small_keys", 2) then
              keys = AccessibilityLevel.SequenceBreak
            end
            local lot =
              (has("logic_lens_shadow_mq_back") or (has("lens") and has("magic"))) and AccessibilityLevel.Normal or
              AccessibilityLevel.SequenceBreak
            return and_accessibility(keys, lot)
          end
          return AccessibilityLevel.None
        end
      },
      ["Shadow Temple MQ GS Falling Spikes Room"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("hookshot") then
            return AccessibilityLevel.Normal
          elseif has("hoverboots") then
            if has("logic_shadow_umbrella_gs") then
              return AccessibilityLevel.Normal
            end
            return AccessibilityLevel.SequenceBreak
          end
          return AccessibilityLevel.Inspect
        end
      }
    },
    ["exits"] = {
      ["Shadow Temple MQ Wind Tunnel"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("hoverboots") and has("hookshot") then
            local keys = AccessibilityLevel.None
            if has("shadow_small_keys", 4) then
              keys = AccessibilityLevel.Normal
            elseif has("shadow_small_keys", 3) then
              keys = AccessibilityLevel.SequenceBreak
            end
            local lot =
              (has("logic_lens_shadow_mq_back") or (has("lens") and has("magic"))) and AccessibilityLevel.Normal or
              AccessibilityLevel.SequenceBreak
            return and_accessibility(lot, keys)
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Shadow Temple MQ Wind Tunnel"] = {
    ["scene"] = "Shadow Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Shadow Temple MQ Wind Hint Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Shadow Temple MQ After Wind Chests"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Shadow Temple MQ GS Wind Hint Room"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Shadow Temple MQ GS After Wind"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["Shadow Temple MQ Beyond Boat"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("ocarina") and has("lullaby") then
            if has("shadow_small_keys", 5) then
              return AccessibilityLevel.Normal
            elseif has("shadow_small_keys", 4) then
              return AccessibilityLevel.SequenceBreak
            end
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Shadow Temple MQ Beyond Boat"] = {
    ["scene"] = "Shadow Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Bongo Bongo"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("shadow_boss_key") then
            if has("bow") then
              return AccessibilityLevel.Normal
            end
            local trick = has("logic_shadow_statue") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
            return and_accessibility(trick, has_bombchus())
          end
          return AccessibilityLevel.None
        end
      },
      ["Shadow Temple MQ GS After Ship"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Shadow Temple MQ GS Near Boss"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("bow") then
            return AccessibilityLevel.Normal
          end
          local trick = has("logic_shadow_statue") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
          return and_accessibility(trick, has_bombchus())
        end
      }
    },
    ["exits"] = {
      ["Shadow Temple MQ Invisible Maze"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("bow") and has("ocarina") and has("time") and has("longshot") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Shadow Temple MQ Invisible Maze"] = {
    ["scene"] = "Shadow Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Shadow Temple MQ Spike Walls Left Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("dinsfire") and has("magic") then
            if has("shadow_small_keys", 6) then
              return AccessibilityLevel.Normal
            elseif has("shadow_small_keys", 5) then
              return AccessibilityLevel.SequenceBreak
            end
          end
          return AccessibilityLevel.None
        end
      },
      ["Shadow Temple MQ Boss Key Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("dinsfire") and has("magic") then
            if has("shadow_small_keys", 6) then
              return AccessibilityLevel.Normal
            elseif has("shadow_small_keys", 5) then
              return AccessibilityLevel.SequenceBreak
            end
          end
          return AccessibilityLevel.None
        end
      },
      ["Shadow Temple MQ Bomb Flower Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Shadow Temple MQ Freestanding Key"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Spirit Temple Split"] = {
    ["scene"] = "Spirit Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["exits"] = {
      ["Spirit Temple Lobby"] = {
        ["child_access"] = function()
          if has("spirit_reg") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("spirit_reg") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["Spirit Temple MQ Lobby"] = {
        ["child_access"] = function()
          if has("spirit_mq") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("spirit_mq") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Spirit Temple Lobby"] = {
    ["scene"] = "Spirit Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["exits"] = {
      ["Desert Colossus From Spirit Lobby"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Child Spirit Temple"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["Early Adult Spirit Temple"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("lift2") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Child Spirit Temple"] = {
    ["scene"] = "Spirit Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Spirit Temple Child Bridge Chest"] = {
        ["child_access"] = function()
          local ranged = (has("boomerang") or has("sling")) and AccessibilityLevel.Normal or AccessibilityLevel.None
          local trick =
            has("logic_spirit_child_bombchu") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
          local sticks = has("sticks") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local stun = (has("nuts") or has("boomerang")) and AccessibilityLevel.Normal or AccessibilityLevel.None
          local armos = (has("sword1") or has("sling")) and AccessibilityLevel.Normal or AccessibilityLevel.None
          return and_accessibility(
            or_accessibility(ranged, and_accessibility(has_bombchus(), trick)),
            or_accessibility(sticks, has_explosives(), and_accessibility(stun, armos))
          )
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["Spirit Temple Child Early Torches Chest"] = {
        ["child_access"] = function()
          local ranged = (has("boomerang") or has("sling")) and AccessibilityLevel.Normal or AccessibilityLevel.None
          local trick =
            has("logic_spirit_child_bombchu") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
          local sticks = has("sticks") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local stun = (has("nuts") or has("boomerang")) and AccessibilityLevel.Normal or AccessibilityLevel.None
          local armos = (has("sword1") or has("sling")) and AccessibilityLevel.Normal or AccessibilityLevel.None
          local df = (has("dinsfire") and has("magic")) and AccessibilityLevel.Normal or AccessibilityLevel.None
          return and_accessibility(
            or_accessibility(ranged, and_accessibility(has_bombchus(), trick)),
            or_accessibility(sticks, has_explosives(), and_accessibility(stun, armos)),
            or_accessibility(sticks, df)
          )
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["Spirit Temple GS Metal Fence"] = {
        ["child_access"] = function()
          local ranged = (has("boomerang") or has("sling")) and AccessibilityLevel.Normal or AccessibilityLevel.None
          local trick =
            has("logic_spirit_child_bombchu") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
          local sticks = has("sticks") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local stun = (has("nuts") or has("boomerang")) and AccessibilityLevel.Normal or AccessibilityLevel.None
          local armos = (has("sword1") or has("sling")) and AccessibilityLevel.Normal or AccessibilityLevel.None
          local df = (has("dinsfire") and has("magic")) and AccessibilityLevel.Inspect or AccessibilityLevel.None
          return and_accessibility(
            or_accessibility(ranged, and_accessibility(has_bombchus(), trick), df),
            or_accessibility(sticks, has_explosives(), and_accessibility(stun, armos))
          )
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["Child Spirit Before Locked Door"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Child Spirit Before Locked Door"] = {
    ["scene"] = "Spirit Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["exits"] = {
      ["Child Spirit Temple Climb"] = {
        ["child_access"] = function()
          if has("spirit_small_keys", 1) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("spirit_small_keys", 1) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Child Spirit Temple Climb"] = {
    ["scene"] = "Spirit Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Spirit Temple Child Climb Chests"] = {
        ["child_access"] = function()
          local keys = has("spirit_small_keys", 5) and AccessibilityLevel.Normal or AccessibilityLevel.None
          return or_accessibility(has_projectile("both"), and_accessibility(keys, has_projectile("child")))
        end,
        ["adult_access"] = function()
          local keys = has("spirit_small_keys", 3) and AccessibilityLevel.Normal or AccessibilityLevel.None
          local lift2 = has("lift2") and AccessibilityLevel.Normal or AccessibilityLevel.None
          return or_accessibility(has_projectile("both"), and_accessibility(keys, lift2, has_projectile("adult")))
        end
      },
      ["Spirit Temple GS Sun on Floor Room"] = {
        ["child_access"] = function()
          local df = (has("dinsfire") and has("magic")) and AccessibilityLevel.Normal or AccessibilityLevel.None
          local weapon = (has("sticks") or has("sword1")) and AccessibilityLevel.Normal or AccessibilityLevel.None
          local keys = has("spirit_small_keys", 5) and AccessibilityLevel.Normal or AccessibilityLevel.None
          return or_accessibility(
            has_projectile("both"),
            df,
            and_accessibility(damage_single_instance_ohko(), or_accessibility(weapon, has_projectile("child"))),
            and_accessibility(keys, has_projectile("child"))
          )
        end,
        ["adult_access"] = function()
          local df = (has("dinsfire") and has("magic")) and AccessibilityLevel.Normal or AccessibilityLevel.None
          local weapon = (has("sticks") or has("sword1")) and AccessibilityLevel.Normal or AccessibilityLevel.None
          local keys = has("spirit_small_keys", 3) and AccessibilityLevel.Normal or AccessibilityLevel.None
          local lift2 = has("lift2") and AccessibilityLevel.Normal or AccessibilityLevel.None
          return or_accessibility(
            has_projectile("both"),
            df,
            and_accessibility(damage_single_instance_ohko(), or_accessibility(weapon, has_projectile("child"))),
            and_accessibility(keys, lift2, or_accessibility(has_projectile("adult"), damage_single_instance_ohko()))
          )
        end
      }
    },
    ["exits"] = {
      ["Spirit Temple Central Chamber"] = {
        ["child_access"] = function()
          return has_explosives()
        end,
        ["adult_access"] = function()
          return has_explosives()
        end
      },
      ["Child Spirit Before Locked Door"] = {
        ["child_access"] = function()
          if has("spirit_small_keys", 5) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("spirit_small_keys", 5) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Early Adult Spirit Temple"] = {
    ["scene"] = "Spirit Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Spirit Temple Compass Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("hookshot") and has("ocarina") and has("lullaby") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["Spirit Temple Early Adult Right Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("bow") or has("hookshot") then
            return AccessibilityLevel.Normal
          end
          local bombs = has("bombs") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local trick =
            has("logic_spirit_lower_adult_switch") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
          return or_accessibility(has_bombchus(), and_accessibility(bombs, trick))
        end
      },
      ["Spirit Temple First Mirror Chests"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("spirit_small_keys", 3) then
            return AccessibilityLevel.Normal
          elseif has("spirit_small_keys", 1) then
            return AccessibilityLevel.SequenceBreak
          end
          return AccessibilityLevel.None
        end
      },
      ["Spirit Temple GS Boulder Room"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          local sot = (has("ocarina") and has("time")) and AccessibilityLevel.Normal or AccessibilityLevel.Inspect
          local ranged = (has("bow") or has("hookshot")) and AccessibilityLevel.Normal or AccessibilityLevel.None
          local bombs = has("bombs") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local trick =
            has("logic_spirit_lower_adult_switch") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak

          return and_accessibility(or_accessibility(ranged, has_bombchus(), and_accessibility(bombs, trick)), sot)
        end
      }
    },
    ["exits"] = {
      ["Spirit Temple Central Chamber"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("spirit_small_keys", 1) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Spirit Temple Central Chamber"] = {
    ["scene"] = "Spirit Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Spirit Temple Map Chest"] = {
        ["child_access"] = function()
          local df = (has("dinsfire") and has("magic")) and AccessibilityLevel.Normal or AccessibilityLevel.None
          local keys3 = has("spirit_small_keys", 3) and AccessibilityLevel.Normal or AccessibilityLevel.None
          local bow = has("bow") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local fa = (has("firearrow") and has("magic")) and AccessibilityLevel.Normal or AccessibilityLevel.None
          local trick = has("logic_spirit_map_chest") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
          local sticks = has("sticks") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local keys5 = has("spirit_small_keys", 5) and AccessibilityLevel.Normal or AccessibilityLevel.None
          return or_accessibility(
            and_accessibility(
              or_accessibility(has_explosives(), keys3),
              or_accessibility(df, and_accessibility(or_accessibility(fa, trick), bow, sticks))
            ),
            and_accessibility(keys5, has_explosives(), sticks)
          )
        end,
        ["adult_access"] = function()
          local df = (has("dinsfire") and has("magic")) and AccessibilityLevel.Normal or AccessibilityLevel.None
          local keys3 = has("spirit_small_keys", 3) and AccessibilityLevel.Normal or AccessibilityLevel.None
          local bow = has("bow") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local fa = (has("firearrow") and has("magic")) and AccessibilityLevel.Normal or AccessibilityLevel.None
          local trick = has("logic_spirit_map_chest") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
          local sticks = has("sticks") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local lift2 = has("lift2") and AccessibilityLevel.Normal or AccessibilityLevel.None
          return or_accessibility(
            and_accessibility(
              or_accessibility(has_explosives(), keys3),
              or_accessibility(df, and_accessibility(or_accessibility(fa, trick), bow, sticks))
            ),
            and_accessibility(keys3, bow, or_accessibility(fa, trick), lift2)
          )
        end
      },
      ["Spirit Temple Sun Block Room Chest"] = {
        ["child_access"] = function()
          local df = (has("dinsfire") and has("magic")) and AccessibilityLevel.Normal or AccessibilityLevel.None
          local keys3 = has("spirit_small_keys", 3) and AccessibilityLevel.Normal or AccessibilityLevel.None
          local bow = has("bow") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local fa = (has("firearrow") and has("magic")) and AccessibilityLevel.Normal or AccessibilityLevel.None
          local trick = has("logic_spirit_sun_chest") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
          local sticks = has("sticks") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local keys5 = has("spirit_small_keys", 5) and AccessibilityLevel.Normal or AccessibilityLevel.None
          return or_accessibility(
            and_accessibility(
              or_accessibility(has_explosives(), keys3),
              or_accessibility(df, and_accessibility(or_accessibility(fa, trick), bow, sticks))
            ),
            and_accessibility(keys5, has_explosives(), sticks)
          )
        end,
        ["adult_access"] = function()
          local df = (has("dinsfire") and has("magic")) and AccessibilityLevel.Normal or AccessibilityLevel.None
          local keys3 = has("spirit_small_keys", 3) and AccessibilityLevel.Normal or AccessibilityLevel.None
          local bow = has("bow") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local fa = (has("firearrow") and has("magic")) and AccessibilityLevel.Normal or AccessibilityLevel.None
          local trick = has("logic_spirit_sun_chest") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
          local sticks = has("sticks") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local lift2 = has("lift2") and AccessibilityLevel.Normal or AccessibilityLevel.None
          return or_accessibility(
            and_accessibility(
              or_accessibility(has_explosives(), keys3),
              or_accessibility(df, and_accessibility(or_accessibility(fa, trick), bow, sticks))
            ),
            and_accessibility(keys3, bow, or_accessibility(fa, trick), lift2)
          )
        end
      },
      ["Spirit Temple Statue Room Hand Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("lift2") and has("ocarina") and has("lullaby") then
            if has("spirit_small_keys", 3) then
              return AccessibilityLevel.Normal
            elseif has("spirit_small_keys", 1) then
              return AccessibilityLevel.SequenceBreak
            end
          end
          return AccessibilityLevel.None
        end
      },
      ["Spirit Temple Statue Room Northeast Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("lift2") and has("ocarina") and has("lullaby") then
            local keys = AccessibilityLevel.None
            if has("spirit_small_keys", 3) then
              keys = AccessibilityLevel.Normal
            elseif has("spirit_small_keys", 1) then
              keys = AccessibilityLevel.SequenceBreak
            end
            local jump =
              (has("hookshot") or has("hoverboots") or has("logic_spirit_lobby_jump")) and AccessibilityLevel.Normal or
              AccessibilityLevel.SequenceBreak
            return and_accessibility(keys, jump)
          end
          return AccessibilityLevel.None
        end
      },
      ["Spirit Temple GS Hall After Sun Block Room"] = {
        ["child_access"] = function()
          local rang = has("boomerang") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local hs = has("hookshot") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local keys = AccessibilityLevel.None
          if has("spirit_small_keys", 5) then
            keys = AccessibilityLevel.Normal
          elseif has("spirit_small_keys", 1) then
            keys = AccessibilityLevel.SequenceBreak
          end

          return or_accessibility(
            and_accessibility(has_explosives(), rang, hs),
            and_accessibility(or_accessibility(rang, AccessibilityLevel.Inspect), keys, has_explosives())
          )
        end,
        ["adult_access"] = function()
          local rang = has("boomerang") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local hs = has("hookshot") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local lift2 = has("lift2") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local keys = AccessibilityLevel.None
          if has("spirit_small_keys", 3) then
            keys = AccessibilityLevel.Normal
          elseif has("spirit_small_keys", 1) then
            keys = AccessibilityLevel.SequenceBreak
          end

          return or_accessibility(
            and_accessibility(has_explosives(), rang, hs),
            and_accessibility(or_accessibility(hs, AccessibilityLevel.Inspect), lift2, keys)
          )
        end
      },
      ["Spirit Temple GS Lobby"] = {
        ["child_access"] = function()
          local keys3 = AccessibilityLevel.None
          if has("spirit_small_keys", 3) then
            keys3 = AccessibilityLevel.Normal
          elseif has("spirit_small_keys", 1) then
            keys3 = AccessibilityLevel.SequenceBreak
          end
          local keys5 = AccessibilityLevel.None
          if has("spirit_small_keys", 5) then
            keys5 = AccessibilityLevel.Normal
          elseif has("spirit_small_keys", 1) then
            keys5 = AccessibilityLevel.SequenceBreak
          end
          local trick_gs =
            has("logic_spirit_lobby_gs") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
          local trick_jump =
            has("logic_spirit_lobby_jump") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
          local rang = has("boomerang") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local hs = has("hookshot") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local hb = has("hoverboots") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local kill = has_bombchus()
          if has("boomerang") or has("sling") then
            kill = AccessibilityLevel.Normal
          end

          return or_accessibility(
            and_accessibility(
              or_accessibility(has_explosives(), keys3),
              trick_gs,
              rang,
              or_accessibility(hs, hb, trick_jump)
            ),
            and_accessibility(
              trick_gs,
              keys5,
              has_explosives(),
              or_accessibility(rang, AccessibilityLevel.Inspect),
              kill
            )
          )
        end,
        ["adult_access"] = function()
          local keys3 = AccessibilityLevel.None
          if has("spirit_small_keys", 3) then
            keys3 = AccessibilityLevel.Normal
          elseif has("spirit_small_keys", 1) then
            keys3 = AccessibilityLevel.SequenceBreak
          end
          local trick_gs =
            has("logic_spirit_lobby_gs") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
          local trick_jump =
            has("logic_spirit_lobby_jump") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
          local rang = has("boomerang") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local hs = has("hookshot") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local hb = has("hoverboots") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local lift2 = has("lift2") and AccessibilityLevel.Normal or AccessibilityLevel.None

          return or_accessibility(
            and_accessibility(
              or_accessibility(has_explosives(), keys3),
              trick_gs,
              rang,
              or_accessibility(hs, hb, trick_jump)
            ),
            and_accessibility(keys3, lift2, or_accessibility(hs, hb, trick_jump))
          )
        end
      }
    },
    ["exits"] = {
      ["Spirit Temple Outdoor Hands"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Spirit Temple Beyond Central Locked Door"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("lift2") then
            if has("spirit_small_keys", 4) then
              return AccessibilityLevel.Normal
            elseif has("spirit_small_keys", 2) then
              return AccessibilityLevel.SequenceBreak
            end
          end
          return AccessibilityLevel.None
        end
      },
      ["Child Spirit Temple Climb"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Spirit Temple Outdoor Hands"] = {
    ["scene"] = "Spirit Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Spirit Temple Silver Gauntlets Chest"] = {
        ["child_access"] = function()
          local keys3 = has("spirit_small_keys", 3) and AccessibilityLevel.Normal or AccessibilityLevel.None
          local ls = has("longshot") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local keys5 = has("spirit_small_keys", 5) and AccessibilityLevel.Normal or AccessibilityLevel.None
          local keys2 = has("spirit_small_keys", 2) and AccessibilityLevel.SequenceBreak or AccessibilityLevel.None

          return or_accessibility(
            and_accessibility(keys3, ls, has_explosives()),
            keys5,
            and_accessibility(keys2, has_explosives())
          )
        end,
        ["adult_access"] = function()
          local keys3 = has("spirit_small_keys", 3) and AccessibilityLevel.Normal or AccessibilityLevel.None
          local ls = has("longshot") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local keys5 = has("spirit_small_keys", 5) and AccessibilityLevel.Normal or AccessibilityLevel.None
          local keys2 = has("spirit_small_keys", 2) and AccessibilityLevel.SequenceBreak or AccessibilityLevel.None

          return or_accessibility(and_accessibility(keys3, ls, has_explosives()), keys5, keys2)
        end
      },
      ["Spirit Temple Mirror Shield Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("lift2") then
            local keys = AccessibilityLevel.None
            if has("spirit_small_keys", 4) then
              keys = AccessibilityLevel.Normal
            elseif has("spirit_small_keys", 2) then
              keys = AccessibilityLevel.SequenceBreak
            end
            return and_accessibility(keys, has_explosives())
          end
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["Desert Colossus"] = {
        ["fixed"] = true,
        ["child_access"] = function()
          if has("spirit_small_keys", 5) then
            return AccessibilityLevel.Normal
          elseif has("spirit_small_keys", 2) then
            return AccessibilityLevel.SequenceBreak
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("lift2") then
            if has("spirit_small_keys", 5) then
              return AccessibilityLevel.Normal
            end
            local keys = AccessibilityLevel.None
            if has("spirit_small_keys", 3) then
              keys = AccessibilityLevel.Normal
            elseif has("spirit_small_keys", 2) then
              keys = AccessibilityLevel.SequenceBreak
            end
            return and_accessibility(keys, has_explosives())
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Spirit Temple Beyond Central Locked Door"] = {
    ["scene"] = "Spirit Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Spirit Temple Near Four Armos Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("shield3") then
            return has_explosives()
          end
          return AccessibilityLevel.None
        end
      },
      ["Spirit Temple Hallway Invisible Chests"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          local lot =
            (has("logic_lens_spirit") or (has("lens") and has("magic"))) and AccessibilityLevel.Normal or
            AccessibilityLevel.SequenceBreak
          return and_accessibility(lot, has_explosives())
        end
      }
    },
    ["exits"] = {
      ["Spirit Temple Beyond Final Locked Door"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("spirit_small_keys", 3) then
            if
              has("spirit_small_keys", 5) and
                (has("logic_spirit_wall") or has("longshot") or has_bombchus() == AccessibilityLevel.Normal or
                  ((has("bombs") or has("nuts") or (has("dinsfire") and has("magic"))) and
                    (has("bow") or has("hookshot") or has("hammer"))))
             then
              return AccessibilityLevel.Normal
            end
            return AccessibilityLevel.SequenceBreak
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Spirit Temple Beyond Final Locked Door"] = {
    ["scene"] = "Spirit Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Spirit Temple Boss Key Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("ocarina") and has("lullaby") then
            if has("bow") and has("hookshot") then
              return AccessibilityLevel.Normal
            end
            return AccessibilityLevel.SequenceBreak
          end
          return AccessibilityLevel.None
        end
      },
      ["Spirit Temple Topmost Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("shield3") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["Twinrova"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("shield3") and has("hookshot") and has("spirit_boss_key") then
            return has_explosives()
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Spirit Temple MQ Lobby"] = {
    ["scene"] = "Spirit Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Spirit Temple MQ Entrance Front Left Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Spirit Temple MQ Entrance Back Left Chest"] = {
        ["child_access"] = function()
          if has("sling") then
            local hammer = has("hammer") and AccessibilityLevel.Normal or AccessibilityLevel.None
            return or_accessibility(
              has_explosives(),
              and_accessibility(hammer, access_region("Spirit Temple MQ Lobby", "adult"))
            )
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("bow") then
            return can_blast()
          end
          return AccessibilityLevel.None
        end
      },
      ["Spirit Temple MQ Entrance Back Right Chest"] = {
        ["child_access"] = function()
          if has("sling") or has("boomerang") then
            return AccessibilityLevel.Normal
          end
          return has_bombchus()
        end,
        ["adult_access"] = function()
          if has("bow") or has("hookshot") then
            return AccessibilityLevel.Normal
          end
          return has_bombchus()
        end
      }
    },
    ["exits"] = {
      ["Desert Colossus From Spirit Lobby"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Child Spirit Temple MQ"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["Adult Spirit Temple MQ"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("longshot") and has("lift2") then
            return has_bombchus()
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Child Spirit Temple MQ"] = {
    ["scene"] = "Spirit Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Spirit Temple MQ Child Hammer Switch Chest"] = {
        ["child_access"] = function()
          if has("hammer") then
            local keys = AccessibilityLevel.None
            if has("spirit_small_keys", 7) then
              keys = AccessibilityLevel.Normal
            elseif has("spirit_small_keys", 2) then
              keys = AccessibilityLevel.SequenceBreak
            end
            return and_accessibility(access_region("Adult Spirit Temple MQ", "adult"), keys)
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["Spirit Temple MQ Map Room Enemy Chest"] = {
        ["child_access"] = function()
          if (has("sticks") or has("sword1")) and has("sling") and (has("dinsfire") and has("magic")) then
            return has_bombchus()
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["Spirit Temple MQ Map Chest"] = {
        ["child_access"] = function()
          if has("sticks") or has("sword1") or has("bombs") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      },
      ["Spirit Temple MQ Silver Block Hallway Chest"] = {
        ["child_access"] = function()
          if has("sling") then
            local keys = AccessibilityLevel.None
            if has("spirit_small_keys", 7) then
              keys = AccessibilityLevel.Normal
            elseif has("spirit_small_keys", 2) then
              keys = AccessibilityLevel.SequenceBreak
            end
            local df = (has("dinsfire") and has("magic")) and AccessibilityLevel.Normal or AccessibilityLevel.None
            local bow = has("bow") and AccessibilityLevel.Normal or AccessibilityLevel.None
            local fa = (has("firearrow") and has("magic")) and AccessibilityLevel.Normal or AccessibilityLevel.None
            local trick =
              has("logic_spirit_sun_chest") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
            local sot = (has("ocarina") and has("time")) and AccessibilityLevel.Normal or AccessibilityLevel.None
            return and_accessibility(
              keys,
              has_bombchus(),
              or_accessibility(
                df,
                and_accessibility(
                  access_region("Adult Spirit Temple MQ", "adult"),
                  bow,
                  or_accessibility(fa, and_accessibility(trick, sot))
                )
              )
            )
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["Spirit Temple MQ Shared"] = {
        ["child_access"] = function()
          if has("spirit_small_keys", 2) then
            return has_bombchus()
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Adult Spirit Temple MQ"] = {
    ["scene"] = "Spirit Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Spirit Temple MQ Child Climb South Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("spirit_small_keys", 7) then
            return AccessibilityLevel.Normal
          elseif has("spirit_small_keys", 1) then
            return AccessibilityLevel.SequenceBreak
          end
          return AccessibilityLevel.None
        end
      },
      ["Spirit Temple MQ Statue Room Lullaby Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("ocarina") and has("lullaby") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["Spirit Temple MQ Statue Room Invisible Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("logic_lens_spirit_mq") or (has("lens") and has("magic")) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.SequenceBreak
        end
      },
      ["Spirit Temple MQ Beamos Room Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("spirit_small_keys", 5) then
            return AccessibilityLevel.Normal
          elseif has("spirit_small_keys", 1) then
            return AccessibilityLevel.SequenceBreak
          end
          return AccessibilityLevel.None
        end
      },
      ["Spirit Temple MQ Chest Switch Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("ocarina") and has("time") then
            if has("spirit_small_keys", 5) then
              return AccessibilityLevel.Normal
            elseif has("spirit_small_keys", 1) then
              return AccessibilityLevel.SequenceBreak
            end
          end
          return AccessibilityLevel.None
        end
      },
      ["Spirit Temple MQ Boss Key Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("ocarina") and has("time") and has("shield3") then
            if has("spirit_small_keys", 5) then
              return AccessibilityLevel.Normal
            elseif has("spirit_small_keys", 1) then
              return AccessibilityLevel.SequenceBreak
            end
          end
          return AccessibilityLevel.None
        end
      },
      ["Spirit Temple MQ GS Nine Thrones Room West"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("spirit_small_keys", 7) then
            return AccessibilityLevel.Normal
          elseif has("spirit_small_keys", 3) then
            return AccessibilityLevel.SequenceBreak
          end
          return AccessibilityLevel.None
        end
      },
      ["Spirit Temple MQ GS Nine Thrones Room North"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("spirit_small_keys", 7) then
            return AccessibilityLevel.Normal
          elseif has("spirit_small_keys", 3) then
            return AccessibilityLevel.SequenceBreak
          end
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["Lower Adult Spirit Temple MQ"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("shield3") and has("bow") and has("magic") then
            if has("firearrow") then
              return AccessibilityLevel.Normal
            elseif has("dinsfire") then
              if has("logic_spirit_mq_lower_adult") then
                return AccessibilityLevel.Normal
              end
              return AccessibilityLevel.SequenceBreak
            end
          end
          return AccessibilityLevel.None
        end
      },
      ["Spirit Temple MQ Shared"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Spirit Temple MQ Boss Area"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("ocarina") and has("lullaby") and has("hammer") then
            if has("spirit_small_keys", 6) then
              return AccessibilityLevel.Normal
            elseif has("spirit_small_keys", 2) then
              return AccessibilityLevel.SequenceBreak
            end
          end
          return AccessibilityLevel.None
        end
      },
      ["Mirror Shield Hand MQ"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("ocarina") and has("time") then
            local keys = AccessibilityLevel.None
            if has("spirit_small_keys", 5) then
              keys = AccessibilityLevel.Normal
            elseif has("spirit_small_keys", 1) then
              keys = AccessibilityLevel.SequenceBreak
            end
            local lot =
              (has("logic_lens_spirit_mq") or (has("lens") and has("magic"))) and AccessibilityLevel.Normal or
              AccessibilityLevel.SequenceBreak
            return and_accessibility(keys, lot)
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Spirit Temple MQ Shared"] = {
    ["scene"] = "Spirit Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Spirit Temple MQ Child Climb North Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("spirit_small_keys", 6) then
            return AccessibilityLevel.Normal
          elseif has("spirit_small_keys", 1) then
            return AccessibilityLevel.SequenceBreak
          end
          return AccessibilityLevel.None
        end
      },
      ["Spirit Temple MQ Compass Chest"] = {
        ["child_access"] = function()
          if has("bow") and has("sling") then
            return AccessibilityLevel.Normal
          elseif has("sling") then
            if has("spirit_small_keys", 7) then
              return AccessibilityLevel.Normal
            elseif has("spirit_small_keys", 2) then
              return AccessibilityLevel.SequenceBreak
            end
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("bow") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["Spirit Temple MQ Sun Block Room Chest"] = {
        ["child_access"] = function()
          if (has("ocarina") and has("time")) or has("logic_spirit_mq_sun_block_sot") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.SequenceBreak
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Spirit Temple MQ GS Sun Block Room"] = {
        ["child_access"] = function()
          local trick1 =
            has("logic_spirit_mq_sun_block_gs") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
          local rang = has("boomerang") and AccessibilityLevel.Normal or AccessibilityLevel.Inspect
          local sot = (has("ocarina") and has("time")) and AccessibilityLevel.Normal or AccessibilityLevel.None
          local trick2 =
            has("logic_spirit_mq_sun_block_sot") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak

          return and_accessibility(trick1, rang, or_accessibility(sot, trick2))
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["Silver Gauntlets Hand MQ"] = {
        ["child_access"] = function()
          local keys7 = AccessibilityLevel.None
          if has("spirit_small_keys", 7) then
            keys7 = AccessibilityLevel.Normal
          elseif has("spirit_small_keys", 3) then
            keys7 = AccessibilityLevel.SequenceBreak
          end
          local sot = (has("ocarina") and has("time")) and AccessibilityLevel.Normal or AccessibilityLevel.None
          local trick =
            has("logic_spirit_mq_sun_block_sot") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
          local keys4 = AccessibilityLevel.None
          if has("spirit_small_keys", 4) then
            keys4 = AccessibilityLevel.Normal
          elseif has("spirit_small_keys", 1) then
            keys4 = AccessibilityLevel.SequenceBreak
          end
          local lot =
            (has("logic_lens_spirit_mq") or (has("lens") and has("magic"))) and AccessibilityLevel.Normal or
            AccessibilityLevel.SequenceBreak

          return or_accessibility(
            and_accessibility(keys7, or_accessibility(sot, trick)),
            and_accessibility(keys4, sot, lot)
          )
        end,
        ["adult_access"] = function()
          local keys7 = AccessibilityLevel.None
          if has("spirit_small_keys", 7) then
            keys7 = AccessibilityLevel.Normal
          elseif has("spirit_small_keys", 1) then
            keys7 = AccessibilityLevel.SequenceBreak
          end
          local sot = (has("ocarina") and has("time")) and AccessibilityLevel.Normal or AccessibilityLevel.None
          local keys4 = AccessibilityLevel.None
          if has("spirit_small_keys", 4) then
            keys4 = AccessibilityLevel.Normal
          elseif has("spirit_small_keys", 1) then
            keys4 = AccessibilityLevel.SequenceBreak
          end
          local lot =
            (has("logic_lens_spirit_mq") or (has("lens") and has("magic"))) and AccessibilityLevel.Normal or
            AccessibilityLevel.SequenceBreak

          return or_accessibility(keys7, and_accessibility(keys4, sot, lot))
        end
      },
      ["Desert Colossus"] = {
        ["fixed"] = true,
        ["child_access"] = function()
          local keys7 = AccessibilityLevel.None
          if has("spirit_small_keys", 7) then
            keys7 = AccessibilityLevel.Normal
          elseif has("spirit_small_keys", 3) then
            keys7 = AccessibilityLevel.SequenceBreak
          end
          local sot = (has("ocarina") and has("time")) and AccessibilityLevel.Normal or AccessibilityLevel.None
          local trick =
            has("logic_spirit_mq_sun_block_sot") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak

          return and_accessibility(keys7, or_accessibility(sot, trick))
        end,
        ["adult_access"] = function()
          local keys7 = AccessibilityLevel.None
          if has("spirit_small_keys", 7) then
            keys7 = AccessibilityLevel.Normal
          elseif has("spirit_small_keys", 3) then
            keys7 = AccessibilityLevel.SequenceBreak
          end
          local sot = (has("ocarina") and has("time")) and AccessibilityLevel.Normal or AccessibilityLevel.None
          local keys4 = AccessibilityLevel.None
          if has("spirit_small_keys", 4) then
            keys4 = AccessibilityLevel.Normal
          elseif has("spirit_small_keys", 1) then
            keys4 = AccessibilityLevel.SequenceBreak
          end
          local lot =
            (has("logic_lens_spirit_mq") or (has("lens") and has("magic"))) and AccessibilityLevel.Normal or
            AccessibilityLevel.SequenceBreak

          return or_accessibility(keys7, and_accessibility(keys4, sot, lot))
        end
      }
    }
  },
  ["Lower Adult Spirit Temple MQ"] = {
    ["scene"] = "Spirit Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Spirit Temple MQ Leever Room Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Spirit Temple MQ Symphony Room Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if
            has("hammer") and has("ocarina") and has("time") and has("epona") and has("sun") and has("storm") and
              has("lullaby")
           then
            if has("spirit_small_keys", 7) then
              return AccessibilityLevel.Normal
            elseif has("spirit_small_keys", 1) then
              return AccessibilityLevel.SequenceBreak
            end
          end
          return AccessibilityLevel.None
        end
      },
      ["Spirit Temple MQ Entrance Front Right Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("hammer") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["Spirit Temple MQ GS Leever Room"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Spirit Temple MQ GS Symphony Room"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if
            has("hammer") and has("ocarina") and has("time") and has("epona") and has("sun") and has("storm") and
              has("lullaby")
           then
            if has("spirit_small_keys", 7) then
              return AccessibilityLevel.Normal
            elseif has("spirit_small_keys", 1) then
              return AccessibilityLevel.SequenceBreak
            end
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Spirit Temple MQ Boss Area"] = {
    ["scene"] = "Spirit Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Spirit Temple MQ Mirror Puzzle Invisible Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("logic_lens_spirit_mq") or (has("lens") and has("magic")) then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.SequenceBreak
        end
      },
      ["Twinrova"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("shield3") and has("spirit_boss_key") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Mirror Shield Hand MQ"] = {
    ["scene"] = "Spirit Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Spirit Temple MQ Mirror Shield Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Silver Gauntlets Hand MQ"] = {
    ["scene"] = "Spirit Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Spirit Temple MQ Silver Gauntlets Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Water Temple Split"] = {
    ["scene"] = "Water Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["exits"] = {
      ["Water Temple Lobby"] = {
        ["child_access"] = function()
          if has("water_reg") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("water_reg") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["Water Temple MQ Lobby"] = {
        ["child_access"] = function()
          if has("water_mq") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("water_mq") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Water Temple Lobby"] = {
    ["scene"] = "Water Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["exits"] = {
      ["Lake Hylia"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Water Temple Highest Water Level"] = {
        ["child_access"] = function()
          return raise_water_level()
        end,
        ["adult_access"] = function()
          return raise_water_level()
        end
      },
      ["Water Temple Dive"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("ironboots") then
            return FTR_or_zora()
          elseif has("longshot") then
            if has("logic_water_temple_torch_longshot") then
              return FTR_or_zora()
            end
            return AccessibilityLevel.SequenceBreak
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Water Temple Highest Water Level"] = {
    ["scene"] = "Water Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Morpha"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("water_boss_key") and has("longshot") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["Water Temple Falling Platform Room"] = {
        ["child_access"] = function()
          if has("water_small_keys", 4) then
            return AccessibilityLevel.Normal
          elseif has("water_small_keys", 1) then
            return AccessibilityLevel.SequenceBreak
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("water_small_keys", 4) then
            return AccessibilityLevel.Normal
          elseif has("water_small_keys", 1) then
            return AccessibilityLevel.SequenceBreak
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Water Temple Dive"] = {
    ["scene"] = "Water Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Water Temple Map Chest"] = {
        ["child_access"] = function()
          return raise_water_level()
        end,
        ["adult_access"] = function()
          return raise_water_level()
        end
      },
      ["Water Temple Compass Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if ((has("ocarina") and has("lullaby")) or has("ironboots")) and has("hookshot") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["Water Temple Torches Chest"] = {
        ["child_access"] = function()
          if has("ocarina") and has("lullaby") then
            if has("sticks") and has("sword1") and has("magic") then
              return access_region("Water Temple Lobby", "child")
            end
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("ocarina") and has("lullaby") then
            if has("bow") or (has("dinsfire") and has("magic")) then
              return AccessibilityLevel.Normal
            end
          end
          return AccessibilityLevel.None
        end
      },
      ["Water Temple Central Bow Target Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("lift1") and has("ocarina") and has("lullaby") then
            local adult = AccessibilityLevel.None
            if has("bow") then
              if has("logic_water_central_bow") or has("hoverboots") or has("longshot") then
                adult = AccessibilityLevel.Normal
              else
                adult = AccessibilityLevel.SequenceBreak
              end
            end
            local child = AccessibilityLevel.None
            if has("sling") then
              local trick =
                has("logic_water_central_bow") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
              child =
                and_accessibility(
                trick,
                access_region("Water Temple Lobby", "child"),
                access_region("Water Temple Middle Water Level")
              )
            end
            return or_accessibility(adult, child)
          end
          return AccessibilityLevel.None
        end
      },
      ["Water Temple GS Behind Gate"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if
            (has("hookshot") or has("hoverboots")) and has("ocarina") and has("lullaby") and
              (has("ironboots") or has("scale"))
           then
            return has_explosives()
          end
          return AccessibilityLevel.None
        end
      },
      ["Water Temple GS Central Pillar"] = {
        --TODO: peek this gs
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("ocarina") and has("lullaby") then
            local ls = has("longshot") and AccessibilityLevel.Normal or AccessibilityLevel.None
            local hs = has("hookshot") and AccessibilityLevel.Normal or AccessibilityLevel.None
            local ib = has("ironboots") and AccessibilityLevel.Normal or AccessibilityLevel.None
            local hb = has("hoverboots") and AccessibilityLevel.Normal or AccessibilityLevel.None
            local bow = has("bow") and AccessibilityLevel.Normal or AccessibilityLevel.None
            local rang = has("boomerang") and AccessibilityLevel.Normal or AccessibilityLevel.None
            local sticks = has("sticks") and AccessibilityLevel.Normal or AccessibilityLevel.None
            local fw = (has("faroreswind") and has("magic")) and AccessibilityLevel.Normal or AccessibilityLevel.None
            local df = (has("dinsfire") and has("magic")) and AccessibilityLevel.Normal or AccessibilityLevel.None
            local trick_fw =
              has("logic_water_central_gs_fw") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
            local trick_ib =
              has("logic_water_central_gs_irons") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
            local keys5 = AccessibilityLevel.None
            if has("water_small_keys", 5) then
              keys5 = AccessibilityLevel.Normal
            elseif has("water_small_keys", 1) then
              keys5 = AccessibilityLevel.SequenceBreak
            end
            return or_accessibility(
              and_accessibility(
                or_accessibility(ls, and_accessibility(trick_fw, hs, fw)),
                or_accessibility(keys5, bow, df)
              ),
              and_accessibility(trick_ib, hs, ib, or_accessibility(bow, df)),
              and_accessibility(
                trick_fw,
                access_region("Water Temple Lobby", "child"),
                rang,
                fw,
                or_accessibility(sticks, df, and_accessibility(keys5, or_accessibility(hb, bow)))
              )
            )
          end
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["Water Temple Cracked Wall"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("ocarina") and has("lullaby") then
            local hs = has("hookshot") and AccessibilityLevel.Normal or AccessibilityLevel.None
            local hb = has("hoverboots") and AccessibilityLevel.Normal or AccessibilityLevel.None
            local trick_no =
              has("logic_water_cracked_wall_nothing") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
            local trick_hb =
              has("logic_water_cracked_wall_hovers") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
            return and_accessibility(
              or_accessibility(hs, hb),
              or_accessibility(trick_no, and_accessibility(trick_hb, hb))
            )
          end
          return AccessibilityLevel.None
        end
      },
      ["Water Temple Middle Water Level"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("ocarina") and has("lullaby") then
            local hs = has("hookshot") and AccessibilityLevel.Normal or AccessibilityLevel.None
            local bow = has("bow") and AccessibilityLevel.Normal or AccessibilityLevel.None
            local sticks = has("sticks") and AccessibilityLevel.Normal or AccessibilityLevel.None
            local df = (has("dinsfire") and has("magic")) and AccessibilityLevel.Normal or AccessibilityLevel.None
            local keys5 = AccessibilityLevel.None
            if has("water_small_keys", 5) then
              keys5 = AccessibilityLevel.Normal
            elseif has("water_small_keys", 1) then
              keys5 = AccessibilityLevel.SequenceBreak
            end
            return or_accessibility(
              bow,
              df,
              and_accessibility(keys5, hs),
              and_accessibility(access_region("Water Temple Lobby", "child"), sticks)
            )
          end
          return AccessibilityLevel.None
        end
      },
      ["Water Temple North Basement"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("ironboots") or (has("ocarina") and has("lullaby")) then
            if has("water_small_keys", 1) then
              local level = AccessibilityLevel.SequenceBreak
              if has("water_small_keys", 4) then
                level = AccessibilityLevel.Normal
              end
              if has("longshot") then
                return level
              end
              if has("hoverboots") then
                if has("logic_water_boss_key_region") then
                  return level
                end
                return AccessibilityLevel.SequenceBreak
              end
            end
          end
          return AccessibilityLevel.None
        end
      },
      ["Water Temple Dragon Statue"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          local zl = (has("ocarina") and has("lullaby")) and AccessibilityLevel.Normal or AccessibilityLevel.None
          local lift1 = has("lift1") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local ib = has("ironboots") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local hs = has("hookshot") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local scale = has("scale") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local bow = has("bow") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local sling = has("sling") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local rang = has("boomerang") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local adult_trick =
            has("logic_water_dragon_adult") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
          local child_trick =
            has("logic_water_dragon_child") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak

          return and_accessibility(
            zl,
            lift1,
            or_accessibility(
              and_accessibility(ib, hs),
              and_accessibility(adult_trick, or_accessibility(has_bombchus(), bow, hs), or_accessibility(scale, ib)),
              and_accessibility(
                child_trick,
                access_region("Water Temple Lobby", "child"),
                or_accessibility(has_bombchus(), sling, rang),
                scale
              )
            )
          )
        end
      }
    }
  },
  ["Water Temple North Basement"] = {
    ["scene"] = "Water Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Water Temple Boss Key Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          local keys5 = AccessibilityLevel.None
          if has("water_small_keys", 5) then
            keys5 = AccessibilityLevel.Normal
          elseif has("water_small_keys", 2) then
            keys5 = AccessibilityLevel.SequenceBreak
          end
          local dive = AccessibilityLevel.SequenceBreak
          if has("logic_water_bk_jump_dive") or has("ironboots") then
            dive = AccessibilityLevel.Normal
          end
          local ledge = AccessibilityLevel.SequenceBreak
          if has("logic_water_north_basement_ledge_jump") or has("hoverboots") then
            ledge = AccessibilityLevel.Normal
          elseif has("lift1") then
            ledge = has_explosives()
          end
          return and_accessibility(keys5, dive, ledge)
        end
      },
      ["Water Temple GS Near Boss Key Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Water Temple Cracked Wall"] = {
    ["scene"] = "Water Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Water Temple Cracked Wall Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return has_explosives()
        end
      }
    }
  },
  ["Water Temple Dragon Statue"] = {
    ["scene"] = "Water Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Water Temple Dragon Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Water Temple Middle Water Level"] = {
    ["scene"] = "Water Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Water Temple Central Pillar Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("ironboots") and has("hookshot") then
            local tunic = has("bluetunic") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
            local keys5 = AccessibilityLevel.None
            if has("water_small_keys", 5) then
              keys5 = AccessibilityLevel.Normal
            elseif has("water_small_keys", 1) then
              keys5 = AccessibilityLevel.SequenceBreak
            end
            local bow = has("bow") and AccessibilityLevel.Normal or AccessibilityLevel.None
            local df = (has("dinsfire") and has("magic")) and AccessibilityLevel.Normal or AccessibilityLevel.None
            return and_accessibility(tunic, or_accessibility(keys5, bow, df))
          end
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["Water Temple Cracked Wall"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    }
  },
  ["Water Temple Falling Platform Room"] = {
    ["scene"] = "Water Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Water Temple GS Falling Platform Room"] = {
        ["child_access"] = function()
          if has("boomerang") then
            if has("logic_water_falling_platform_gs_boomerang") then
              return AccessibilityLevel.Normal
            end
            return AccessibilityLevel.SequenceBreak
          elseif has("sling") then
            return AccessibilityLevel.Inspect
          end
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("longshot") then
            return AccessibilityLevel.Normal
          elseif has("hookshot") then
            if has("logic_water_falling_platform_gs_hookshot") then
              return AccessibilityLevel.Normal
            end
            return AccessibilityLevel.SequenceBreak
          elseif has("bow") then
            return AccessibilityLevel.Inspect
          end
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["Water Temple Dark Link Region"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("hookshot") then
            if has("water_small_keys", 5) then
              return AccessibilityLevel.Normal
            elseif has("water_small_keys", 2) then
              return AccessibilityLevel.SequenceBreak
            end
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Water Temple Dark Link Region"] = {
    ["scene"] = "Water Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Water Temple Longshot Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Water Temple River Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("ocarina") and has("time") and has("bow") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["Water Temple GS River"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          local sot = (has("ocarina") and has("time")) and AccessibilityLevel.Normal or AccessibilityLevel.None
          local ib = has("ironboots") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local ls = has("longshot") and AccessibilityLevel.Normal or AccessibilityLevel.Inspect
          local bow = has("bow") and AccessibilityLevel.Normal or AccessibilityLevel.None
          local trick = has("logic_water_river_gs") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak

          return and_accessibility(
            sot,
            or_accessibility(
              and_accessibility(ib, FTR_or_zora()),
              and_accessibility(trick, ls, or_accessibility(bow, has_bombchus()))
            )
          )
        end
      }
    },
    ["exits"] = {
      ["Water Temple Dragon Statue"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("ocarina") and has("time") and has("bow") then
            if has("ironboots") or has("logic_water_dragon_jump_dive") or has("logic_water_dragon_adult") then
              return FTR_or_zora()
            end
            return AccessibilityLevel.SequenceBreak
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Water Temple MQ Lobby"] = {
    ["scene"] = "Water Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Morpha"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("water_boss_key") and has("longshot") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["Lake Hylia"] = {
        ["child_access"] = function()
          return AccessibilityLevel.Normal
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      },
      ["Water Temple MQ Dive"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("ironboots") then
            return FTR_or_zora()
          end
          return AccessibilityLevel.None
        end
      },
      ["Water Temple MQ Dark Link Region"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("water_small_keys", 1) and has("longshot") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Water Temple MQ Dive"] = {
    ["scene"] = "Water Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Water Temple MQ Map Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("hookshot") then
            return has_fire()
          end
          return AccessibilityLevel.None
        end
      },
      ["Water Temple MQ Central Pillar Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("hookshot") then
            local tunic = has("bluetunic") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
            local trick =
              has("logic_water_mq_central_pillar") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
            local fa =
              (has("bow") and has("firearrow") and has("magic")) and AccessibilityLevel.Normal or
              AccessibilityLevel.None
            local df = (has("dinsfire") and has("magic")) and AccessibilityLevel.Normal or AccessibilityLevel.None
            local sot = (has("ocarina") and has("time")) and AccessibilityLevel.Normal or AccessibilityLevel.None
            return and_accessibility(tunic, or_accessibility(and_accessibility(trick, fa), and_accessibility(df, sot)))
          end
          return AccessibilityLevel.None
        end
      }
    },
    ["exits"] = {
      ["Water Temple MQ Lowered Water Levels"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("ocarina") and has("lullaby") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Water Temple MQ Lowered Water Levels"] = {
    ["scene"] = "Water Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Water Temple MQ Compass Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("bow") or (has("dinsfire") and has("magic")) then
            return AccessibilityLevel.Normal
          elseif has("sticks") then
            return and_accessibility(access_region("Water Temple MQ Lobby", "child"), has_explosives())
          end
          return AccessibilityLevel.None
        end
      },
      ["Water Temple MQ Longshot Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("hookshot") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["Water Temple MQ GS Lizalfos Hallway"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("dinsfire") and has("magic") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      },
      ["Water Temple MQ GS Before Upper Water Switch"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("longshot") then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Water Temple MQ Dark Link Region"] = {
    ["scene"] = "Water Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Water Temple MQ Boss Key Chest"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("dinsfire") and has("magic") then
            if has("logic_water_dragon_jump_dive") or has("scale") or has("ironboots") then
              return FTR_or_zora()
            end
            return AccessibilityLevel.SequenceBreak
          end
          return AccessibilityLevel.None
        end
      },
      ["Water Temple MQ GS River"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          return AccessibilityLevel.Normal
        end
      }
    },
    ["exits"] = {
      ["Water Temple MQ Basement Gated Areas"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("dinsfire") and has("magic") and has("ironboots") then
            return FTR_or_zora()
          end
          return AccessibilityLevel.None
        end
      }
    }
  },
  ["Water Temple MQ Basement Gated Areas"] = {
    ["scene"] = "Water Temple",
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["locations"] = {
      ["Water Temple MQ Freestanding Key"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if
            has("hoverboots") or (can_use_scarecrow() == AccessibilityLevel.Normal) or
              has("logic_water_north_basement_ledge_jump")
           then
            return AccessibilityLevel.Normal
          end
          return AccessibilityLevel.SequenceBreak
        end
      },
      ["Water Temple MQ GS Triple Wall Torch"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("bow") and has("firearrow") and has("magic") then
            if has("hoverboots") then
              return AccessibilityLevel.Normal
            end
            return can_use_scarecrow()
          end
          return AccessibilityLevel.None
        end
      },
      ["Water Temple MQ GS Freestanding Key Area"] = {
        ["child_access"] = function()
          return AccessibilityLevel.None
        end,
        ["adult_access"] = function()
          if has("logic_water_mq_locked_gs") then
            return AccessibilityLevel.Normal
          elseif has("water_small_keys", 2) then
            if
              has("hoverboots") or (can_use_scarecrow() == AccessibilityLevel.Normal) or
                has("logic_water_north_basement_ledge_jump")
             then
              return AccessibilityLevel.Normal
            end
          end
          return AccessibilityLevel.SequenceBreak
        end
      }
    }
  }
}
