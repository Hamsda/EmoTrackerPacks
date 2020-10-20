# Ocarina of Time Randomizer Map Tracker

This pack is designed for the [Ocarina of Time Randomizer](https://ootrandomizer.com/).

## Variants

The pack offers 7 different variants:

1. Map Tracker
2. Map Tracker (Keysanity)
3. Items Only
4. Items Only (Keysanity)
5. Items Only (minimal)
6. Entrance Randomizer
7. Entrance Randomizer (Keysanity)

## Vanilla vs Master Quest Dungeons

The randomizer has the option to switch some or all dungeons to their Master Quest equivalents.
To accomodate for this, you can click on the dungeon labels to change their current status:

- ![Vanilla](images/label_deku.png "Vanilla") The dungeons vanilla checks will be shown.
- ![Master Quest](images/label_deku_mq.png "Master Quest") The dungeons MQ checks will be shown.
- ![Unknown](images/label_deku_red.png "Unknown") Both versions of the dungeon will be shown.

You can use this in the non map variants as a reminder.

The small key maximum amounts in the keysanity variants will dynamically update according to what you selected for the corresponding dungeon.
If you have a dungeon marked as unknown in non-keysanity, some of the checks in the dungeon might not show up correctly until you pick either vanilla or MQ.

## Special items

Some of this functionality might not be immediately obvious:

- Right clicking ![Fairy Ocarina](images/fairyocarina.png "Fairy Ocarina")/![Ocarina of Time](images/ocarina.png "Ocarina of Time") will overlay it with ![Scarecrow](images/overlay_scarecrow.png "Scarecrow") indicating that you have confirmed the scarecrow song or started with free scarecrow. Locations that make use of the scarecrow will not show up unless this is turned on. The location of the scarecrow in Lake Hylia will automatically mark this when cleared first as child and then as adult.
- ![Triforce Piece](images/triforce_piece.png "Triforce Piece") is used as a counter for Triforce pieces in the Triforce Hunt mode.

## Settings (for map variants)

There is a variety of toggles available to accomodate the different settings the randomizer offers. The settings are arranged to mimic the current GUI of the randomizer. The default for all of these should match the settings used for the weekly races (check out the OoTR discord for more info).

### Main Rules

This tab contains most of the important settings that can have a major impact on the logic of a randomizer seed ([see wiki](https://wiki.ootrandomizer.com/index.php?title=Readme#Main_Rules)).

#### Forest

This setting determines if you can leave the Kokiri Forest without beating the Deku Tree.

- ![Closed Forest](images/setting_forest_closed.png "Closed Forest") You will find the Kokiri Sword and Slingshot early on to beat the Deku Tree before leaving Kokiri Forest.
- ![Closed Deku](images/setting_forest_deku.png "Closed Deku") You can leave Kokiri Forest but will need the Kokiri Sword and Deku Shield to go to the Deku Tree.
- ![Open Forest](images/setting_forest_open.png "Open Forest") You can immediately leave Kokiri Forest and go to the Deku Tree.

#### Kakariko Gate

This setting determines the behaviour of the Kakariko Gate to Death Mountain Trail as child as well as the Happy Mask Shop.

- ![Open Gate](images/setting_kak_open.png "Open Gate") The gate is always open. The Happy Mask Shop opens once you obtain Zelda's Letter.
- ![Zelda's Letter Opens Gate](images/setting_kak_letter.png "Zelda's Letter Opens Gate") Both the gate and the Happy Mask Shop open once you obtain Zelda's Letter.
- ![Closed Gate](images/setting_kak_closed.png "Closed Gate") Both the gate and the Happy Mask Shop are closed until showing Zelda's Letter to the guard.

#### Door of Time

This setting determines whether the Door of Time starts open or closed.

- ![Closed Door](images/setting_door_closed.png "Closed Door") You will need to find Song of Time to open the Door of Time and unlock the ability to time travel.
- ![Open Door](images/setting_door_open.png "Open Door") The Door of Time starts open and you can immediately switch between ages.

#### Zora's Fountain

This setting determines whether Zoras Fountain starts open or closed.

- ![Closed Fountain](images/setting_fountain_closed.png "Closed Fountain") You can find Rutos Letter and open Zoras Fountain by moving King Zora.
- ![Adult Fountain](images/setting_fountain_adult.png "Adult Fountain") Zoras Fountain can be accessed as adult without handing in Rutos Letter. Child access to the fountain is unchanged.
- ![Open Fountain](images/setting_fountain_open.png "Open Fountain") Rutos Letter can no longer be found, but Zoras Fountain can be accessed without moving King Zora for both ages.

#### Gerudo Fortress

This setting determines the state of the.

- ![Normal Gerudo Fortress](images/setting_gerudo_fortress_normal.png "Normal Gerudo Fortress") You will have to rescue all 4 carpenters.
- ![Fast Gerudo Fortress](images/setting_gerudo_fortress_fast.png "Fast Gerudo Fortress") You only need to free one carpenter (F1 North).
- ![Open Gerudo Fortress](images/setting_gerudo_fortress_open.png "Open Gerudo Fortress") The carpenters start free and the Fortress is immediately accessible (if `Shuffle Gerudo Card` is turned off, mark your ![Gerudo Card](images/gerudocard.png "Gerudo Card") as well).

#### Rainbow Bridge Requirement

This setting determines what is needed to trigger the rainbow bridge in front of Ganons castle.

- ![Always Open](images/setting_bridge_open.png "Always Open") Nothing required, bridge is always open
- ![Vanilla](images/setting_bridge_vanilla.png "Vanilla") Light arrows, shadow medallion, and spirit medallion required
- ![Stones](images/setting_bridge_stones.png "Stones") Variable amount of stones required
- ![Medallions](images/setting_bridge_medallions.png "Medallions") Variable amount of medallions required
- ![Dungeons](images/setting_bridge_dungeons.png "Dungeons") Variable amount of medallions and stones required
- ![GS tokens](images/setting_bridge_gs.png "GS tokens") Variable amount of Gold Skulltula tokens required

#### Rainbow Bridge Amount

This setting determines how many (if any) of the items specified in `Rainbow Bridge Requirement` are needed.

![Bridge Amount](images/setting_bridge_amount.png "Bridge Amount") Increment or decrement the number required.

#### Number of Trials

This setting determines how many trials are needed to dispel the barrier in Ganons castle.

![Trials](images/setting_trials.png "Trials") Increment or decrement the number of trials needed.

If trials are set to at least 1, Ganons castle will show locations for the trials. When you clear a trial, mark that location as cleared. Once the number of cleared trials is greater than the number of required trials, the last chest will appear available.

I have not found a good way to represent that a trial started as dispelled.

#### Starting Age

This setting determines which age you started as.

- ![Child Start](images/setting_age_child.png "Child Start") Link started as child.
- ![Adult Start](images/setting_age_adult.png "Adult Start") Link started as adult.

If you have selected ![Open Door](images/setting_door_open.png "Open Door") or collected an ![Ocarina](images/fairyocarina.png "Ocarina") and ![Song of Time](images/time_colored.png "Song of Time") the checks for the other age will unlock.

#### Bombchus Are Considered in Logic

This setting determines if Bombchus are considered by the logic.

- ![Bombchus not in logic](images/setting_logic_chus_no.png "Bombchus not in logic") Bombchus will never be considered by the logic and can be used to sequence break bomb locations.
- ![Bombchus in logic](images/setting_logic_chus_yes.png "Bombchus in logic") Bombchus can be used as regular explosives like bombs in logic.

#### Shopsanity

This setting determines if Shopsanity is active.

- ![Shopsanity off](images/setting_shopsanity_no.png "Shopsanity off") The shops have their regular items.
- ![Shopsanity on](images/setting_shopsanity_yes.png "Shopsanity on") A varying amount of items in the shops is randomized.

#### Tokensanity

This setting determines which Gold Skulltulas are shown, especially useful for Tokensanity.

- ![Skulltulas hidden](images/setting_tokens_off.png "Skulltulas hidden") Gold Skulltulas will be hidden.
- ![Skulltulas in dungeons](images/setting_tokens_dungeons.png "Skulltulas in dungeons") Gold Skulltulas in dungeons will be displayed.
- ![Skulltulas in overworld](images/setting_tokens_overworld.png "Skulltulas in overworld") Gold Skulltulas in the overworld will be displayed.
- ![Skulltulas everywhere](images/setting_tokens_all.png "Skulltulas everywhere") All Gold Skulltulas will be displayed.

#### Scrub Shuffle

This setting determines if all Deku Scrubs have randomized items.

- ![Scrubs not shuffled](images/setting_scrub_shuffle_no.png "Scrubs not shuffled") Only the three Deku Scrubs that give actual items in the vanilla game can have random items.
- ![Scrubs shuffled](images/setting_scrub_shuffle_yes.png "Scrubs shuffled") All Deku Scrubs can have random items.

#### Shuffle Cows

This setting determines if cows have randomized items.

- ![Cowsanity off](images/setting_cowsanity_no.png "Cowsanity off") The cows just give milk when Eponas song gets played.
- ![Cowsanity on](images/setting_cowsanity_yes.png "Cowsanity on") The cows will give a random item the first time Eponas song gets played.

#### Shuffle Kokiri Sword

This setting determines if the Kokiri Sword gets shuffled.

- ![Kokiri Sword not shuffled](images/setting_shuffle_sword1_no.png "Kokiri Sword not shuffled") The Kokiri Sword is not shuffled and will be captured in the corresponding chest by default.
- ![Kokiri Sword shuffled](images/setting_shuffle_sword1_yes.png "Kokiri Sword shuffled") The Kokiri Sword is shuffled into the item pool and will not be captured.

#### Shuffle Ocarinas

This setting determines if the Ocarinas get shuffled.

- ![Ocarinas not shuffled](images/setting_shuffle_ocarinas_no.png "Ocarinas not shuffled") The Ocarinas are not shuffled and will be captured in the corresponding chests by default.
- ![Ocarinas shuffled](images/setting_shuffle_ocarinas_yes.png "Ocarinas shuffled") The Ocarinas are shuffled into the item pool and will not be captured.

#### Shuffle Weird Egg

This setting determines if the Weird Egg gets shuffled.

- ![Weird Egg not shuffled](images/setting_shuffle_egg_no.png "Weird Egg not shuffled") The Weird Egg is not shuffled and will be captured in the corresponding chest by default.
- ![Weird Egg shuffled](images/setting_shuffle_egg_yes.png "Weird Egg shuffled") The Weird Egg is shuffled into the item pool and will not be captured.

#### Shuffle Gerudo Card

This setting determines if the Gerudo Card gets shuffled.

- ![Gerudo Card not shuffled](images/setting_shuffle_card_no.png "Gerudo Card not shuffled") The Gerudo Card is not shuffled and will be captured in the corresponding chest by default.
- ![Gerudo Card shuffled](images/setting_shuffle_card_yes.png "Gerudo Card shuffled") The Gerudo Card is shuffled into the item pool and will not be captured.

#### Shuffle Magic Beans

This setting determines if Magic Beans are shuffled.

- ![Magic Beans not shuffled](images/setting_shuffle_beans_no.png "Magic Beans not shuffled") Magic Beans are not shuffled and will be captured in the corresponding chest by default.
- ![Magic Beans shuffled](images/setting_shuffle_beans_yes.png "Magic Beans shuffled") The Magic Beans are shuffled into the item pool and will not be captured.

#### Shuffle Medigoron & Carpet Salesman

This setting determines if Medigoron and Carpet Salesman items are shuffled.

- ![Medigoron and Carpet Salesman not shuffled](images/setting_merchants_off.png "Medigoron and Carpet Salesman not shuffled") Medigoron and Carpet Salesman items are not shuffled.
- ![Medigoron and Carpet Salesman shuffled](images/setting_merchants_shuffle.png "Medigoron and Carpet Salesman shuffled") Medigoron and Carpet Salesman items are shuffled and the merchants sell one randomized item for 200 rupees each.

#### Complete Mask Quest

This setting determines if all masks will be available once the Happy Mask Shop is open.

- ![Mask Quest not complete](images/setting_masks_off.png "Mask Quest not complete") The mask quest has to be completed step by step like in the vanilla game.
- ![Mask Quest complete](images/setting_masks_complete.png "Mask Quest complete") All the masks will be available once the Happy Mask Shop is open.

#### Hints

This setting determines when hintable locations will show up on the map ([see wiki](https://wiki.ootrandomizer.com/index.php?title=Readme#Other)).

- ![Hints off](images/setting_hints_off.png "Hints off") Hintable locations will never show up on the map.
- ![Hints Truth](images/setting_hints_truth.png "Hints Truth") Hintable locations will show up on the map if you have ![Mask of Truth](images/truth.png "Mask of Truth").
- ![Hints Agony](images/setting_hints_agony.png "Hints Agony") Hintable locations will show up on the map if you have ![Stone of Agony](images/agony.png "Stone of Agony").
- ![Hints on](images/setting_hints_on.png "Hints on") Hintable locations will always show up on the map.

#### Damage Multiplier

This setting determines how much damage you take ([see wiki](https://wiki.ootrandomizer.com/index.php?title=Readme#Other)).

- ![Damage x0.5](images/setting_damage_half.png "Damage x0.5") Damage is halved.
- ![Damage x1](images/setting_damage_normal.png "Damage x1") Damage is normal.
- ![Damage x2](images/setting_damage_double.png "Damage x2") Damage is doubled.
- ![Damage x4](images/setting_damage_quadruple.png "Damage x4") Damage is quadrupled.
- ![OHKO](images/setting_damage_ohko.png "OHKO") Damage kills you in one hit.

#### Bean Planting

This setting determines how the Magic Beans will be handled on the map.

- ![Plant off](images/setting_plant_no.png "Plant off") The bean patches won't show up on the child map and adult locations will just show up once you have the bean item.
- ![Plant on](images/setting_plant_yes.png "Plant on") The bean patches will show up on the child map and adult locations require those to be checked off (meaning the bean has actually been planted there).

### Detailed Logic

This tab includes some options for more granular logic changes ([see wiki](https://wiki.ootrandomizer.com/index.php?title=Readme#Detailed_Logic)).

#### Nighttime Skulltulas Expect Sun's Song

This setting determines if logic expects the player to have an ocarina and the Sun’s Song to get Gold Skulltula locations that are only found at nighttime.

- ![Sun's Song Not Expected](images/setting_skulltulas_sun_off.png "Sun's Song Not Expected") Sun's Song is not expected by logic.
- ![Sun's Song Expected](images/setting_skulltulas_sun_on.png "Sun's Song Expected") Sun's Song is expected, but locations will show as sequence breaks.

#### Logic Tricks

This tab also contains a list of (some of) the logic tricks that can be enabled in the randomizer.

## Entrance Randomizer variants

The entrance randomizer variants are very different from the regular map tracker variants. The map does not include any item locations to be checked (yet) but instead has locations for the randomized entrances. They are split between `Entrances` (grottos, houses, dungeons, etc) and `Connectors` (connections between different overworld areas).

There are two variants, one for keysanity and one without, but none of the keys are actually used for logic (yet).

All locations have a capture spot, where you can mark what is at that location. If the location is useless, just mark off the icon to clean up the map. Later you can see what led where by simply hovering over the locations.

I made a [quick explanation](https://www.twitch.tv/videos/429980574) on how to use the ER variant (slightly outdated but the general principle still is the same).

### Settings (Entrance Randomizer only)

The settings allow you to select which pools are actually shuffled (split based on Dev-R branch, since it is the most popular for ER). If they are not shuffled, the appropriate captures are placed at (almost) all locations and certain locations are hidden since they are useless regardless of any other settings.

#### Shuffle Interior Entrances

- ![Interior Shuffle Off](images/setting_entrance_interiors_off.png "Interior Shuffle Off") No interiors are shuffled.
- ![Simple Interiors Shuffled](images/setting_entrance_interiors_simple.png "Simple Interiors Shuffled") Interiors except Link's House, Temple of Time, Kak Potion Shop, and Windmill are shuffled.
- ![All Interiors Shuffled](images/setting_entrance_interiors_all.png "All Interiors Shuffled") All interiors are shuffled.

#### Shuffle Grotto Entrances

- ![Grotto Shuffle Off](images/setting_entrance_grottos_off.png "Grotto Shuffle Off") Grottos and graves are not shuffled.
- ![Grottos Shuffled](images/setting_entrance_grottos_shuffle.png "Grottos Shuffled") Grottos and graves are shuffled.

#### Shuffle Dungeon Entrances

- ![Dungeon Shuffle Off](images/setting_entrance_dungeons_off.png "Dungeon Shuffle Off") Dungeons are not shuffled.
- ![Dungeons Shuffled](images/setting_entrance_dungeons_shuffle.png "Dungeons Shuffled") Dungeons are shuffled.

#### Shuffle Overworld Entrances

- ![Overworld Entrance Shuffle Off](images/setting_entrance_overworld_off.png "Overworld Entrance Shuffle Off") Overworld entrances are not shuffled.
- ![Overworld Entrances Shuffled](images/setting_entrance_overworld_shuffle.png "Overworld Entrances Shuffled") Overworld entrances are shuffled.

#### Randomize Owl Drops

- ![Owl Drop Shuffle Off](images/setting_entrance_owl_off.png "Owl Drop Shuffle Off") Owl drops are not shuffled.
- ![Owl Drops Shuffled](images/setting_entrance_owl_shuffle.png "Owl Drops Shuffled") Owl drops are shuffled.

#### Randomize Warp Song Destinations

- ![Warp Song Shuffle Off](images/setting_entrance_warpsong_off.png "Warp Song Shuffle Off") Warp song destinations are not shuffled.
- ![Warp Songs Shuffled](images/setting_entrance_warpsong_shuffle.png "Warp Songs Shuffled") Warp song destinations are shuffled.

#### Randomize Overworld Spawns

- ![Spawn Shuffle Off](images/setting_entrance_spawn_off.png "Spawn Shuffle Off") Spawns are not shuffled.
- ![Spawn Shuffled](images/setting_entrance_spawn_shuffle.png "Spawn Shuffled") Spawns are shuffled.

### Counters

Additionally there are counters for the useful indoors entrances, so you can evaluate how much focus to put on exploring more entrances:

- ![Counter: Generic Grottos](images/entrance_grotto_generic.png "Counter: Generic Grottos") 9 generic grottos (1 chest, 1 gossip stone).
- ![Counter: Scrubs](images/entrance_grotto_scrub.png "Counter: Scrubs") 10 grottos that contain 2 or 3 scrubs each. Only 2 of these are relevant if `Shuffle Scrubs` is off.
- ![Counter: Cows](images/entrance_grotto_cow.png "Counter: Cows") 4 grottos/houses that only have a cow (Impas House Back, Ingo Barn, Lon Lon Corner Tower, Mountain Bombable Grotto). The other cow spots have their own markers (![Links House](images/entrance_house_link.png) and ![Field Valley Grotto](images/entrance_grotto_field_valley.png))
- ![Counter: Great Fairies](images/entrance_house_fairy.png "Counter: Great Fairies") 6 Great Fairy Fountains.
- ![Counter: Shops](images/entrance_house_shop.png "Counter: Shops") 7 randomized shops (Kakariko Potion Shop has 2 separate icons for capture).
