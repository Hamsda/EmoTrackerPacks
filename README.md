# OoTRMapTracker

## Content

This is a pack for [EmoTracker](https://emotracker.net/) designed for the [Ocarina of Time Randomizer](https://ootrandomizer.com/).
You can easily download it from within the EmoTracker application.

This pack allows you to keep track of your current item loadout and has maps with all item locations for child and adult Link. These locations get filtered by your current item loadout to only show what you can actually reach.

## Questions

If you have any questions regarding the pack or the tracker itself, I recommend joining the [EmoTracker discord](https://emotracker.net/community/) and asking in there. Or you can just send me a DM on Discord to __Hamsda#4585__ or open an issue on Github.

## Variants

The pack offers 5 different variants:

1. Regular Map Tracker
2. Keysanity Map Tracker
3. Items Only
4. Items Only (Keysanity)
5. Items Only (minimal)

## Vanilla vs Master Quest Dungeons

The Randomizer has the option to switch some or all dungeons to their Master Quest equivalents.  
To accomodate for this, you can click on the dungeon labels to change them from vanilla ![vanilla deku](ootrando_overworldmap_hamsda/images/label_deku.png) to Master Quest ![mq deku](ootrando_overworldmap_hamsda/images/label_deku_mq.png). You can use this in the non map variants as a reminder.
The small key maximum amounts in the keysanity variants will dynamically update according to what you selected for the corresponding dungeon.

## Special items

Some of this functionality might not be immediately obvious:

- Right clicking ![Fairy Ocarina](ootrando_overworldmap_hamsda/images/fairyocarina.png "Fairy Ocarina")/![Ocarina of Time](ootrando_overworldmap_hamsda/images/ocarina.png "Ocarina of Time") will overlay it with ![Scarecrow](ootrando_overworldmap_hamsda/images/overlay_scarecrow.png "Scarecrow"), indicating that you have confirmed the scarecrow song or started with free scarecrow. Locations that make use of the scarecrow will show up as sequence breaks unless this is turned on.
- ![Ice Trap](ootrando_overworldmap_hamsda/images/icetrap.png "Ice Trap") is used as a counter for ice traps. This is somewhat useful to evaluate freestanding items during racing, but mostly just for fun with settings that include higher numbers of ice traps.

## Settings (for map variants)

There is a variety of settings available to accomodate the different options that the Randomizer offers:

### Forest

This setting determines if you can leave the Kokiri Forest without beating the Deku Tree ([see wiki](https://github.com/TestRunnerSRL/OoT-Randomizer/wiki/setting-information#open-forest)).

- ![Closed Forest](ootrando_overworldmap_hamsda/images/setting_forest_closed.png "Closed Forest") You will find the Kokiri Sword and Slingshot early on to beat the Deku Tree before leaving the Kokiri Forest.
- ![Open Forest](ootrando_overworldmap_hamsda/images/setting_forest_open.png "Open Forest") You can immediately leave the Kokiri Forest.

### Kakariko Gate

This setting determines whether the Kakariko Gate starts open or closed as a child ([see wiki](https://github.com/TestRunnerSRL/OoT-Randomizer/wiki/setting-information#open-kakariko-gate)).

- ![Closed Kakariko](ootrando_overworldmap_hamsda/images/setting_kak_closed.png "Closed Kakariko") You will need to show Zeldas Letter to the guard in front of the gate to open it.
- ![Open Kakariko](ootrando_overworldmap_hamsda/images/setting_kak_open.png "Open Kakariko") The Kakariko Gate starts open and you can go to Death Mountain Trail.

### Door of Time

This setting determines whether the Door of Time starts open or closed ([see wiki](https://github.com/TestRunnerSRL/OoT-Randomizer/wiki/setting-information#open-door-of-time)).

- ![Closed Door](ootrando_overworldmap_hamsda/images/setting_door_closed.png "Closed Door") You will find the Song of Time as a child to open the Door of Time.
- ![Open Door](ootrando_overworldmap_hamsda/images/setting_door_open.png "Open Door") The Door of Time starts open and you can immediately go adult.

### Zoras Fountain

This setting determines whether Zoras Fountain starts open or closed.

- ![Closed Fountain](ootrando_overworldmap_hamsda/images/setting_fountain_closed.png "Closed Fountain") You can find Rutos Letter and open Zoras Fountain by moving King Zora.
- ![Open Fountain](ootrando_overworldmap_hamsda/images/setting_fountain_open.png "Open Fountain") Rutos Letter can no longer be found, but Zoras Fountain can be accessed without moving King Zora.

### Gerudo Fortress

This setting determines the state of the ([see wiki](https://github.com/TestRunnerSRL/OoT-Randomizer/wiki/setting-information#gerudo-fortress)).

- ![Normal Gerudo Fortress](ootrando_overworldmap_hamsda/images/setting_gerudo_fortress_normal.png "Normal Gerudo Fortress") You will have to rescue all 4 carpenters.
- ![Fast Gerudo Fortress](ootrando_overworldmap_hamsda/images/setting_gerudo_fortress_fast.png "Fast Gerudo Fortress") You only need to free one carpenter (F1 North).
- ![Open Gerudo Fortress](ootrando_overworldmap_hamsda/images/setting_gerudo_fortress_open.png "Open Gerudo Fortress") The carpenters start free and the Fortress is immediately accessible (if `Shuffle Gerudo Card` is turned off, mark your ![Gerudo Card](ootrando_overworldmap_hamsda/images/gerudocard.png "Open Gerudo Fortress") as well).

### Rainbow Bridge

This setting determines what is needed to trigger the rainbow bridge in front of Ganons castle ([see wiki](https://github.com/TestRunnerSRL/OoT-Randomizer/wiki/setting-information#rainbow-bridge-requirement)).

- ![Always Open](ootrando_overworldmap_hamsda/images/setting_bridge_open.png "Always Open") Nothing required, bridge is always open
- ![Vanilla](ootrando_overworldmap_hamsda/images/setting_bridge_vanilla.png "Vanilla") Light arrows, shadow medallion, and spirit medallion required
- ![All Stones](ootrando_overworldmap_hamsda/images/setting_bridge_stones.png "All Stones") All 3 stones required
- ![All Medallions](ootrando_overworldmap_hamsda/images/setting_bridge_medallions.png "All Medallions") All 6 medallions required
- ![All Dungeons](ootrando_overworldmap_hamsda/images/setting_bridge_dungeons.png "All Dungeons") All 6 medallions and 3 stones required
- ![100 GS tokens](ootrando_overworldmap_hamsda/images/setting_bridge_100gs.png "100 GS tokens") 100 gold skulltula tokens required

### Shuffle Kokiri Sword

This setting determines if the Kokiri Sword gets shuffled ([see wiki](https://github.com/TestRunnerSRL/OoT-Randomizer/wiki/setting-information#shuffle-kokiri-sword)).

- ![Kokiri Sword not shuffled](ootrando_overworldmap_hamsda/images/setting_shuffle_sword1_no.png "Kokiri Sword not shuffled") The Kokiri Sword is not shuffled and will be captured in the corresponding chest by default.
- ![Kokiri Sword shuffled](ootrando_overworldmap_hamsda/images/setting_shuffle_sword1_yes.png "Kokiri Sword shuffled") The Kokiri Sword is shuffled into the item pool and will not be captured.

### Shuffle Ocarinas

This setting determines if the Ocarinas get shuffled ([see wiki](https://github.com/TestRunnerSRL/OoT-Randomizer/wiki/setting-information#shuffle-ocarinas)).

- ![Ocarinas not shuffled](ootrando_overworldmap_hamsda/images/setting_shuffle_ocarinas_no.png "Ocarinas not shuffled") The Ocarinas are not shuffled and will be captured in the corresponding chests by default.
- ![Ocarinas shuffled](ootrando_overworldmap_hamsda/images/setting_shuffle_ocarinas_yes.png "Ocarinas shuffled") The Ocarinas are shuffled into the item pool and will not be captured.

### Shuffle Weird Egg

This setting determines if the Weird Egg gets shuffled ([see wiki](https://github.com/TestRunnerSRL/OoT-Randomizer/wiki/setting-information#shuffle-weird-egg)).

- ![Weird Egg not shuffled](ootrando_overworldmap_hamsda/images/setting_shuffle_egg_no.png "Weird Egg not shuffled") The Weird Egg is not shuffled and will be captured in the corresponding chest by default.
- ![Weird Egg shuffled](ootrando_overworldmap_hamsda/images/setting_shuffle_egg_yes.png "Weird Egg shuffled") The Weird Egg is shuffled into the item pool and will not be captured.

### Shuffle Gerudo Card

This setting determines if the Gerudo Card gets shuffled ([see wiki](https://github.com/TestRunnerSRL/OoT-Randomizer/wiki/setting-information#shuffle-gerudo-card)).

- ![Gerudo Card not shuffled](ootrando_overworldmap_hamsda/images/setting_shuffle_card_no.png "Gerudo Card not shuffled") The Gerudo Card is not shuffled and will be captured in the corresponding chest by default.
- ![Gerudo Card shuffled](ootrando_overworldmap_hamsda/images/setting_shuffle_card_yes.png "Gerudo Card shuffled") The Gerudo Card is shuffled into the item pool and will not be captured.

### Shuffle Deku Scrubs

This setting determines if all Deku Scrubs have randomized items ([see wiki](https://github.com/TestRunnerSRL/OoT-Randomizer/wiki/setting-information#shuffle-deku-salescrubs)).

- ![Scrubs not shuffled](ootrando_overworldmap_hamsda/images/setting_scrub_shuffle_no.png "Scrubs not shuffled") Only the three Deku Scrubs that give actual items in the vanilla game can have random items.
- ![Scrubs shuffled](ootrando_overworldmap_hamsda/images/setting_scrub_shuffle_yes.png "Scrubs shuffled") All Deku Scrubs can have random items.

### Shopsanity

This setting determines if Shopsanity is active ([see wiki](https://github.com/TestRunnerSRL/OoT-Randomizer/wiki/setting-information#setting_shopsanity)).

- ![Shopsanity off](ootrando_overworldmap_hamsda/images/setting_shopsanity_no.png "Shopsanity off") The shops have their regular items.
- ![Shopsanity on](ootrando_overworldmap_hamsda/images/setting_shopsanity_yes.png "Shopsanity on") A varying amount of items in the shops is randomized.

### Cowsanity

This setting determines if Cowsanity is active.

- ![Cowsanity off](ootrando_overworldmap_hamsda/images/setting_cowsanity_no.png "Cowsanity off") The cows just give milk when Eponas song gets played.
- ![Cowsanity on](ootrando_overworldmap_hamsda/images/setting_cowsanity_yes.png "Cowsanity on") The cows will give a random item the first time Eponas song gets played.

### Gold Skulltulas

This setting determines which Gold Skulltulas are shown (especially useful for [Tokensanity](https://github.com/TestRunnerSRL/OoT-Randomizer/wiki/setting-information#tokensanity)).

- ![Skulltulas hidden](ootrando_overworldmap_hamsda/images/setting_skulltulas_off.png "Skulltulas hidden") Gold Skulltulas will be hidden.
- ![Skulltulas in dungeons](ootrando_overworldmap_hamsda/images/setting_skulltulas_dungeons.png "Skulltulas in dungeons") The Gold Skulltulas in dungeons will be displayed.
- ![Skulltulas everywhere](ootrando_overworldmap_hamsda/images/setting_skulltulas_all.png "Skulltulas everywhere") All Gold Skulltulas will be displayed.

### Bombchus in logic

This setting determines if Bombchus are considered by the logic ([see wiki](https://github.com/TestRunnerSRL/OoT-Randomizer/wiki/setting-information#bombchus-are-considered-in-logic)).

- ![Bombchus not in logic](ootrando_overworldmap_hamsda/images/setting_logic_chus_no.png "Bombchus not in logic") Bombchus will never be considered by the logic and can be used to sequence break bomb locations.
- ![Bombchus in logic](ootrando_overworldmap_hamsda/images/setting_logic_chus_yes.png "Bombchus in logic") Bombchus can be used as regular explosives like bombs in logic.

### Lens of Truth

This setting changes where the logic requires the Lens of Truth ([see wiki](https://github.com/TestRunnerSRL/OoT-Randomizer/wiki/setting-information#lens-of-truth)).

- ![Required everywhere](ootrando_overworldmap_hamsda/images/setting_lens_all.png "Required everywhere") Required to see all invisible things.
- ![Wasteland and Chest Minigame](ootrando_overworldmap_hamsda/images/setting_lens_wasteland.png "Wasteland and Chest Minigame") Required to cross the Haunted Wasteland and to win the Treasure Chest minigame.
- ![Only Chest Minigame](ootrando_overworldmap_hamsda/images/setting_lens_chest.png "Only Chest Minigame") Required only to win the Treasure Chest minigame.

### Fewer Tunic Requirements

This setting changes where the logic requires Goron and Zora tunics ([see wiki](https://github.com/TestRunnerSRL/OoT-Randomizer/wiki/setting-information#fewer-tunic-requirements)).

- ![Required everywhere](ootrando_overworldmap_hamsda/images/setting_fewer_tunics_no.png "Required everywhere") Required basically everywhere a heat/breath timer shows up.
- ![Fewer requirements](ootrando_overworldmap_hamsda/images/setting_fewer_tunics_yes.png "Fewer requirements") Required for fewer locations.

### Hints

This setting determines when hintable locations will show up on the map ([see wiki](https://github.com/TestRunnerSRL/OoT-Randomizer/wiki/setting-information#gossip-stones)).

- ![Hints off](ootrando_overworldmap_hamsda/images/setting_hints_off.png "Hints off") Hintable locations will never show up on the map.
- ![Hints Truth](ootrando_overworldmap_hamsda/images/setting_hints_truth.png "Hints Truth") Hintable locations will show up on the map if you have ![Mask of Truth](ootrando_overworldmap_hamsda/images/truth.png "Mask of Truth").
- ![Hints Agony](ootrando_overworldmap_hamsda/images/setting_hints_agony.png "Hints Agony") Hintable locations will show up on the map if you have ![Stone of Agony](ootrando_overworldmap_hamsda/images/agony.png "Stone of Agony").
- ![Hints on](ootrando_overworldmap_hamsda/images/setting_hints_on.png "Hints on") Hintable locations will always show up on the map.

### Magic Beans

This setting determines how the Magic Beans will be handled on the map.

- ![Beans off](ootrando_overworldmap_hamsda/images/setting_beans_off.png "Beans off") The bean patches won't show up on the child map and adult locations will just show up once you have the bean item.
- ![Plant Beans](ootrando_overworldmap_hamsda/images/setting_beans_plant.png "Plant Beans") The bean patches will show up on the child map and adult locations require those to be checked off (meaning the bean has actually been planted there).