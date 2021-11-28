# Settings (for map variants)

There is a variety of toggles available to accomodate the different settings the randomizer offers. The settings are arranged to mimic the current GUI of the randomizer.

The presets icon is a customizable preset loader. Cycle through the presets with left click and load with right click (some settings might require an extra right click since they depend on other settings).
To customize the presets, please override `scripts/user_presets.lua` and edit to your liking. I hope the structure is fairly straightforward. Which setting number corresponds to which setting can be found in `items/options.json` (0 based indexing).

## Main Rules: Open

This tab contains most of the important settings that determine how "open" a randomizer seed is ([see wiki](https://wiki.ootrandomizer.com/index.php?title=Readme#Open)).

### Forest

This setting determines if you can leave the Kokiri Forest without beating the Deku Tree.

- ![Closed Forest](images/setting_forest_closed.png "Closed Forest") You will find the Kokiri Sword and Slingshot early on to beat the Deku Tree before leaving Kokiri Forest.
- ![Closed Deku](images/setting_forest_deku.png "Closed Deku") You can leave Kokiri Forest but will need the Kokiri Sword and Deku Shield to go to the Deku Tree.
- ![Open Forest](images/setting_forest_open.png "Open Forest") You can immediately leave Kokiri Forest and go to the Deku Tree.

### Kakariko Gate

This setting determines the behaviour of the Kakariko Gate to Death Mountain Trail as child as well as the Happy Mask Shop.

- ![Open Gate](images/setting_kak_open.png "Open Gate") The gate is always open. The Happy Mask Shop opens once you obtain Zelda's Letter.
- ![Zelda's Letter Opens Gate](images/setting_kak_letter.png "Zelda's Letter Opens Gate") Both the gate and the Happy Mask Shop open once you obtain Zelda's Letter.
- ![Closed Gate](images/setting_kak_closed.png "Closed Gate") Both the gate and the Happy Mask Shop are closed until showing Zelda's Letter to the guard.

### Door of Time

This setting determines whether the Door of Time starts open or closed.

- ![Closed Door](images/setting_door_closed.png "Closed Door") You will need to find Song of Time to open the Door of Time and unlock the ability to time travel.
- ![Open Door](images/setting_door_open.png "Open Door") The Door of Time starts open and you can immediately switch between ages.

### Zora's Fountain

This setting determines whether Zoras Fountain starts open or closed.

- ![Closed Fountain](images/setting_fountain_closed.png "Closed Fountain") You can find Rutos Letter and open Zoras Fountain by moving King Zora.
- ![Adult Fountain](images/setting_fountain_adult.png "Adult Fountain") Zoras Fountain can be accessed as adult without handing in Rutos Letter. Child access to the fountain is unchanged.
- ![Open Fountain](images/setting_fountain_open.png "Open Fountain") Rutos Letter can no longer be found, but Zoras Fountain can be accessed without moving King Zora for both ages.

### Gerudo Fortress

This setting determines the state of the.

- ![Normal Gerudo Fortress](images/setting_gerudo_fortress_normal.png "Normal Gerudo Fortress") You will have to rescue all 4 carpenters.
- ![Fast Gerudo Fortress](images/setting_gerudo_fortress_fast.png "Fast Gerudo Fortress") You only need to free one carpenter (F1 North).
- ![Open Gerudo Fortress](images/setting_gerudo_fortress_open.png "Open Gerudo Fortress") The carpenters start free and the Fortress is immediately accessible.

### Rainbow Bridge Requirement

This setting determines what is needed to trigger the rainbow bridge in front of Ganons castle.

- ![Always Open](images/setting_bridge_open.png "Always Open") Nothing required, bridge is always open
- ![Vanilla](images/setting_bridge_vanilla.png "Vanilla") Light arrows, shadow medallion, and spirit medallion required
- ![Stones](images/setting_bridge_stones.png "Stones") Variable amount of stones required
- ![Medallions](images/setting_bridge_medallions.png "Medallions") Variable amount of medallions required
- ![Dungeons](images/setting_bridge_dungeons.png "Dungeons") Variable amount of medallions and stones required
- ![GS tokens](images/setting_bridge_gs.png "GS tokens") Variable amount of Gold Skulltula tokens required

### Rainbow Bridge Amount

This setting determines how many (if any) of the items specified in `Rainbow Bridge Requirement` are needed.

![Bridge Amount](images/setting_bridge_amount.png "Bridge Amount") Increment or decrement the number required.

### Number of Trials

This setting determines how many trials are needed to dispel the barrier in Ganons castle.

![Trials](images/setting_trials.png "Trials") Increment or decrement the number of trials needed.

If trials are set to at least 1, Ganons castle will show locations for the trials. When you clear a trial, mark that location as cleared. Once the number of cleared trials is greater than the number of required trials, the last chest will appear available.

I have not found a good way to represent that a trial started as dispelled.

## Main Rules: World

This tab contains more settings about the world structure of a randomizer seed ([see wiki](https://wiki.ootrandomizer.com/index.php?title=Readme#World)).

A lot of these settings will not have any influence on the standard variant. To get the full benefits, you will need to use the entrance randomizer variant.

### Starting Age

This setting determines which age you started as.

- ![Child Start](images/setting_age_child.png "Child Start") Link started as child.
- ![Adult Start](images/setting_age_adult.png "Adult Start") Link started as adult.

If you have selected ![Open Door](images/setting_door_open.png "Open Door") or collected an ![Ocarina](images/fairyocarina.png "Ocarina") and ![Song of Time](images/song_time.png "Song of Time") the checks for the other age will unlock.

### Shuffle Interior Entrances

- ![Interior Shuffle Off](images/setting_entrance_interiors_off.png "Interior Shuffle Off") No interiors are shuffled.
- ![Simple Interiors Shuffled](images/setting_entrance_interiors_simple.png "Simple Interiors Shuffled") Interiors except Link's House, Temple of Time, Kak Potion Shop, and Windmill are shuffled.
- ![All Interiors Shuffled](images/setting_entrance_interiors_all.png "All Interiors Shuffled") All interiors are shuffled.

### Shuffle Grotto Entrances

- ![Grotto Shuffle Off](images/setting_entrance_grottos_off.png "Grotto Shuffle Off") Grottos and graves are not shuffled.
- ![Grottos Shuffled](images/setting_entrance_grottos_shuffle.png "Grottos Shuffled") Grottos and graves are shuffled.

### Shuffle Dungeon Entrances

- ![Dungeon Shuffle Off](images/setting_entrance_dungeons_off.png "Dungeon Shuffle Off") Dungeons are not shuffled.
- ![Dungeons Shuffled](images/setting_entrance_dungeons_shuffle.png "Dungeons Shuffled") Dungeons are shuffled.

### Shuffle Overworld Entrances

- ![Overworld Entrance Shuffle Off](images/setting_entrance_overworld_off.png "Overworld Entrance Shuffle Off") Overworld entrances are not shuffled.
- ![Overworld Entrances Shuffled](images/setting_entrance_overworld_shuffle.png "Overworld Entrances Shuffled") Overworld entrances are shuffled.

### Mix Entrance Pools

- ![Mix Entrance Pools Off](images/setting_entrance_mixed_off.png "Mix Entrance Pools Off") Entrance pools are not mixed.
- ![Mix Indoor Entrances](images/setting_entrance_mixed_indoor.png "Mix Indoor Entrances") Shuffled entrances that are not `Overworld` are mixed.
- ![Mix All Entrances](images/setting_entrance_mixed_all.png "Mix All Entrances") All shuffled entrances are mixed.

### Randomize Owl Drops

- ![Owl Drop Shuffle Off](images/setting_entrance_owl_off.png "Owl Drop Shuffle Off") Owl drops are not shuffled.
- ![Owl Drops Shuffled](images/setting_entrance_owl_shuffle.png "Owl Drops Shuffled") Owl drops are shuffled.

### Randomize Warp Song Destinations

- ![Warp Song Shuffle Off](images/setting_entrance_warpsong_off.png "Warp Song Shuffle Off") Warp song destinations are not shuffled.
- ![Warp Songs Shuffled](images/setting_entrance_warpsong_shuffle.png "Warp Songs Shuffled") Warp song destinations are shuffled.

### Randomize Overworld Spawns

- ![Spawn Shuffle Off](images/setting_entrance_spawn_off.png "Spawn Shuffle Off") Spawns are not shuffled.
- ![Spawn Shuffled](images/setting_entrance_spawn_shuffle.png "Spawn Shuffled") Spawns are shuffled.


### Bombchus Are Considered in Logic

This setting determines if Bombchus are considered by the logic.

- ![Bombchus not in logic](images/setting_logic_chus_no.png "Bombchus not in logic") Bombchus will never be considered by the logic and can be used to sequence break bomb locations.
- ![Bombchus in logic](images/setting_logic_chus_yes.png "Bombchus in logic") Bombchus can be used as regular explosives like bombs in logic.

## Main Rules: Shuffle

This tab contains settings about additional items being shuffled ([see wiki](https://wiki.ootrandomizer.com/index.php?title=Readme#Shuffle)).

### Shopsanity

This setting determines if Shopsanity is active.

- ![Shopsanity off](images/setting_shopsanity_no.png "Shopsanity off") The shops have their regular items.
- ![Shopsanity on](images/setting_shopsanity_yes.png "Shopsanity on") A varying amount of items in the shops is randomized.

### Tokensanity

This setting determines which Gold Skulltulas are shown, especially useful for Tokensanity.

- ![Skulltulas hidden](images/setting_tokens_off.png "Skulltulas hidden") Gold Skulltulas will be hidden.
- ![Skulltulas in dungeons](images/setting_tokens_dungeons.png "Skulltulas in dungeons") Gold Skulltulas in dungeons will be displayed.
- ![Skulltulas in overworld](images/setting_tokens_overworld.png "Skulltulas in overworld") Gold Skulltulas in the overworld will be displayed.
- ![Skulltulas everywhere](images/setting_tokens_all.png "Skulltulas everywhere") All Gold Skulltulas will be displayed.

### Scrub Shuffle

This setting determines if all Deku Scrubs have randomized items.

- ![Scrubs not shuffled](images/setting_scrub_shuffle_no.png "Scrubs not shuffled") Only the three Deku Scrubs that give actual items in the vanilla game can have random items.
- ![Scrubs shuffled](images/setting_scrub_shuffle_yes.png "Scrubs shuffled") All Deku Scrubs can have random items.

### Shuffle Cows

This setting determines if cows have randomized items.

- ![Cowsanity off](images/setting_cowsanity_no.png "Cowsanity off") The cows just give milk when Eponas song gets played.
- ![Cowsanity on](images/setting_cowsanity_yes.png "Cowsanity on") The cows will give a random item the first time Eponas song gets played.

### Shuffle Kokiri Sword

This setting determines if the Kokiri Sword gets shuffled.

- ![Kokiri Sword not shuffled](images/setting_shuffle_sword1_no.png "Kokiri Sword not shuffled") The Kokiri Sword is not shuffled and will be captured in the corresponding chest by default.
- ![Kokiri Sword shuffled](images/setting_shuffle_sword1_yes.png "Kokiri Sword shuffled") The Kokiri Sword is shuffled into the item pool and will not be captured.

### Shuffle Ocarinas

This setting determines if the Ocarinas get shuffled.

- ![Ocarinas not shuffled](images/setting_shuffle_ocarinas_no.png "Ocarinas not shuffled") The Ocarinas are not shuffled and will be captured in the corresponding chests by default.
- ![Ocarinas shuffled](images/setting_shuffle_ocarinas_yes.png "Ocarinas shuffled") The Ocarinas are shuffled into the item pool and will not be captured.

### Shuffle Weird Egg

This setting determines if the Weird Egg gets shuffled.

- ![Weird Egg not shuffled](images/setting_shuffle_egg_no.png "Weird Egg not shuffled") The Weird Egg is not shuffled and will be captured in the corresponding chest by default.
- ![Weird Egg shuffled](images/setting_shuffle_egg_yes.png "Weird Egg shuffled") The Weird Egg is shuffled into the item pool and will not be captured.

### Shuffle Gerudo Card

This setting determines if the Gerudo Card gets shuffled.

- ![Gerudo Card not shuffled](images/setting_shuffle_card_no.png "Gerudo Card not shuffled") The Gerudo Card is not shuffled and will be captured in the corresponding chest by default.
- ![Gerudo Card shuffled](images/setting_shuffle_card_yes.png "Gerudo Card shuffled") The Gerudo Card is shuffled into the item pool and will not be captured.

### Shuffle Magic Beans

This setting determines if Magic Beans are shuffled.

- ![Magic Beans not shuffled](images/setting_shuffle_beans_no.png "Magic Beans not shuffled") Magic Beans are not shuffled and will be captured in the corresponding chest by default.
- ![Magic Beans shuffled](images/setting_shuffle_beans_yes.png "Magic Beans shuffled") The Magic Beans are shuffled into the item pool and will not be captured.

### Shuffle Medigoron & Carpet Salesman

This setting determines if Medigoron and Carpet Salesman items are shuffled.

- ![Medigoron and Carpet Salesman not shuffled](images/setting_shuffle_merchants_no.png "Medigoron and Carpet Salesman not shuffled") Medigoron and Carpet Salesman items are not shuffled.
- ![Medigoron and Carpet Salesman shuffled](images/setting_shuffle_merchants_yes.png "Medigoron and Carpet Salesman shuffled") Medigoron and Carpet Salesman items are shuffled and the merchants sell one randomized item for 200 rupees each.

## Main Rules: Shuffle Dungeon Items

This tab contains settings about dungeon items being shuffled ([see wiki](https://wiki.ootrandomizer.com/index.php?title=Readme#Shuffle_Dungeon_Items)).

In non keysanity variants, all of these settings will be forced to `Off`, effectively giving you every key. Can be used with the keysanity variants in mystery settings, so you don't have to mark all keys manually.

The individual keycounts will be remembered, should you turn this on by accident. Just turn it off again to restore your previous keycounts.

### Shuffle Small Keys

This setting determines if Small Keys are shuffled (non keys variants will force this off).

- ![Small Keys not shuffled](images/setting_shuffle_smallkeys_no.png "Small Keys not shuffled") Small Keys are not shuffled and will always be considered at their maximum.
- ![Small Keys shuffled](images/setting_shuffle_smallkeys_yes.png "Small Keys shuffled") Small Keys are shuffled and need to be tracked by the user.

### Shuffle Thieves' Hideout Keys

This setting determines if Thieves' Hideout Keys are shuffled (non keys variants will force this off).

- ![Thieves' Hideout Keys not shuffled](images/setting_shuffle_hideoutkeys_no.png "Thieves' Hideout Keys not shuffled") Thieves' Hideout Keys are not shuffled and will always be considered at their maximum.
- ![Thieves' Hideout Keys shuffled](images/setting_shuffle_hideoutkeys_yes.png "Thieves' Hideout Keys shuffled") Thieves' Hideout Keys are shuffled and need to be tracked by the user.

### Shuffle Boss Keys

This setting determines if Boss Keys are shuffled (non keys variants will force this off).

- ![Boss Keys not shuffled](images/setting_shuffle_bosskeys_no.png "Boss Keys not shuffled") Boss Keys are not shuffled and will always be considered active.
- ![Boss Keys shuffled](images/setting_shuffle_bosskeys_yes.png "Boss Keys shuffled") Boss Keys are shuffled and need to be tracked by the user.

### Shuffle Ganon's Boss Key

This setting determines if Ganon's Boss Key is shuffled (non keys variants will force this off).

- ![Ganon's Boss Key not shuffled](images/setting_shuffle_ganon_bosskey_no.png "Ganon's Boss Key not shuffled") Ganon's Boss Key is not shuffled and will always be considered active.
- ![Ganon's Boss Key shuffled](images/setting_shuffle_ganon_bosskey_yes.png "Ganon's Boss Key shuffled") Ganon's Boss Key is shuffled and needs to be tracked by the user.

## Other

This tab contains some additional settings mostly for convenience ([see wiki](https://wiki.ootrandomizer.com/index.php?title=Readme#Other_2)).

### Skip Child Zelda

This setting determines if visiting Zelda in the Hyrule Castle Gardens is skipped.

- ![Child Zelda not skipped](images/setting_zelda_off.png "Child Zelda not skipped") Zelda has to be visited like in the vanilla game.
- ![Child Zelda skipped](images/setting_zelda_free.png "Child Zelda skipped") Zelda already counts as visited, allowing dependent events to unfold.

### Complete Mask Quest

This setting determines if all masks will be available once the Happy Mask Shop is open.

- ![Mask Quest not complete](images/setting_masks_off.png "Mask Quest not complete") The mask quest has to be completed step by step like in the vanilla game.
- ![Mask Quest complete](images/setting_masks_complete.png "Mask Quest complete") All the masks will be available once the Happy Mask Shop is open.

### Hints

This setting determines when hintable locations will show up on the map ([see wiki](https://wiki.ootrandomizer.com/index.php?title=Readme#Other)).

- ![Hints off](images/setting_hints_off.png "Hints off") Hintable locations will never show up on the map.
- ![Hints Truth](images/setting_hints_truth.png "Hints Truth") Hintable locations will show up on the map if you have ![Mask of Truth](images/truth.png "Mask of Truth").
- ![Hints Agony](images/setting_hints_agony.png "Hints Agony") Hintable locations will show up on the map if you have ![Stone of Agony](images/agony.png "Stone of Agony").
- ![Hints on](images/setting_hints_on.png "Hints on") Hintable locations will always show up on the map.

### Damage Multiplier

This setting determines how much damage you take ([see wiki](https://wiki.ootrandomizer.com/index.php?title=Readme#Other)).

- ![Damage x0.5](images/setting_damage_half.png "Damage x0.5") Damage is halved.
- ![Damage x1](images/setting_damage_normal.png "Damage x1") Damage is normal.
- ![Damage x2](images/setting_damage_double.png "Damage x2") Damage is doubled.
- ![Damage x4](images/setting_damage_quadruple.png "Damage x4") Damage is quadrupled.
- ![OHKO](images/setting_damage_ohko.png "OHKO") Damage kills you in one hit.

### Nighttime Skulltulas Expect Sun's Song

This setting determines if logic expects the player to have an ocarina and the Sun’s Song to get Gold Skulltula locations that are only found at nighttime.

- ![Sun's Song Not Expected](images/setting_skulltulas_sun_off.png "Sun's Song Not Expected") Sun's Song is not expected by logic.
- ![Sun's Song Expected](images/setting_skulltulas_sun_on.png "Sun's Song Expected") Sun's Song is expected, but locations will show as sequence breaks.

## Logic Tricks

This tab contains a list of the logic tricks that can be enabled in the randomizer ([see wiki](https://wiki.ootrandomizer.com/index.php?title=Readme#Detailed_Logic)).

The tracker will show the tricks from this list as sequence breaks, even if they are turned off. Enabling them will show them as in logic instead, reflecting your chosen logic as closely as possible.
