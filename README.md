# OoTRMapTracker

## Content

This is a pack for [EmoTracker](https://emotracker.net/) designed for the [Ocarina of Time Randomizer](https://github.com/AmazingAmpharos/OoT-Randomizer).
You can easily download it from within the EmoTracker application.

This pack allows you to keep track of your current item loadout and has maps with all item locations for child and adult Link. These locations get filtered by your current item loadout to only show what you can actually reach.

## Questions

If you have any questions regarding the pack or the tracker itself, I recommend joining the [EmoTracker discord](https://emotracker.net/community/) and asking in there. Or you can just send me a DM on Discord to __Hamsda#4585__ or open an issue on Github.

## Variants

The pack offers 4 different variants:

1. Regular Map Tracker
2. Keysanity Map Tracker
3. Items Only
4. Items Only (Keysanity)
5. Items Only (minimal)

## Vanilla vs Master Quest Dungeons

The Randomizer has the option to switch some or all dungeons to their Master Quest equivalents.  
To accomodate for this, you can click on the dungeon labels to change them from vanilla ![vanilla deku](ootrando_overworldmap_hamsda/images/label_deku.png) to Master Quest ![mq deku](ootrando_overworldmap_hamsda/images/label_deku_mq.png). You can use this in the non map variants as well as a reminder.  
This also means that the key counts for the dungeons in the Keysanity variants will always go up to the maximum of vanilla and Master Quest: Forest Temple goes up to 6 small keys, because MQ Forest Temple has 6 small keys instead of 5 in vanilla; Water Temple also goes up to 6 small keys, because vanilla Water Temple has 6 small keys unlike the 2 it has in MQ.

## Special items

There are a few special items whose purpose might not be directly obvious:

- ![Gerudo symbol](ootrando_overworldmap_hamsda/images/gerudo_symbol_colored.png "Gerudo symbol") Checking this item reflects the carpenters being rescued from Gerudo Fortress. This is separate from the Gerudo Card ![Gerudo card](ootrando_overworldmap_hamsda/images/gerudocard.png "Gerudo card") because of [various settings related to Gerudo Fortress in the randomizer](https://github.com/TestRunnerSRL/OoT-Randomizer/tree/Dev#gerudo-fortress).
- ![Stone of Agony](ootrando_overworldmap_hamsda/images/agony.png "Stone of Agony") Checking this item enables you to capture items placed at locations you received hints for by the Gossip Stones, even if you selected hints to be always on or require Mask of Truth instead of Stone of Agony.

## Settings (for map variants)

There is a variety of settings available to accomodate the different options that the Randomizer offers:

### Rainbow Bridge

This setting determines what is needed to trigger the rainbow bridge in front of Ganons castle.

- ![All Medallions](ootrando_overworldmap_hamsda/images/rainbow_medallions.png "All Medallions") All 6 medallions required
- ![Vanilla](ootrando_overworldmap_hamsda/images/rainbow_vanilla.png "Vanilla") Light arrows, shadow medallion, and spirit medallion required
- ![All Dungeons](ootrando_overworldmap_hamsda/images/rainbow_dungeons.png "All Dungeons") All 6 medallions and 3 stones required
- ![Open](ootrando_overworldmap_hamsda/images/rainbow_open.png "Open") Nothing required, bridge is always open

### Forest

This setting determines if you can leave the Kokiri Forest without beating the Deku Tree.

- ![Closed Forest](ootrando_overworldmap_hamsda/images/mido_closed.png "Closed Forest") You will find the Kokiri Sword and Slingshot early on to beat the Deku Tree before leaving the Kokiri Forest.
- ![Open Forest](ootrando_overworldmap_hamsda/images/mido_open.png "Open Forest") You can immediately leave the Kokiri Forest.

### Kakariko Gate

This setting determines whether the Kakariko Gate starts open or closed as a child.

- ![Closed Kakariko](ootrando_overworldmap_hamsda/images/kak_closed.png "Closed Kakariko") You will need to show Zeldas Letter to the guard in front of the gate to open it.
- ![Open Kakariko](ootrando_overworldmap_hamsda/images/kak_open.png "Open Kakariko") The Kakariko Gate starts open and you can go to Death Mountain Trail.

### Door of Time

This setting determines whether the Door of Time starts open or closed.

- ![Closed Door](ootrando_overworldmap_hamsda/images/dot_closed.png "Closed Door") You will find the Song of Time as a child to open the Door of Time.
- ![Open Door](ootrando_overworldmap_hamsda/images/dot_open.png "Open Door") The Door of Time starts open and you can immediately go adult.

### Lens of Truth

This setting changes where the logic requires the Lens of Truth.

- ![Required everywhere](ootrando_overworldmap_hamsda/images/lens_all.png "Required everywhere") Required to see all invisible things.
- ![Wasteland and Chest Minigame](ootrando_overworldmap_hamsda/images/lens_wasteland.png "Wasteland and Chest Minigame") Required to cross the Haunted Wasteland and to win the Treasure Chest minigame.
- ![Only Chest Minigame](ootrando_overworldmap_hamsda/images/lens_chest.png "Only Chest Minigame") Required only to win the Treasure Chest minigame.

### Fewer Tunic Requirements

This setting changes where the [logic requires Goron and Zora tunics](https://github.com/TestRunnerSRL/OoT-Randomizer/tree/Dev#fewer-tunic-requirements).

- ![Required everywhere](ootrando_overworldmap_hamsda/images/fewer_tunics_no.png "Required everywhere") Required basically everywhere a heat/breath timer shows up.
- ![Fewer requirements](ootrando_overworldmap_hamsda/images/fewer_tunics_yes.png "Fewer requirements") Required for fewer locations.

### Bombchus in logic

This setting determines if Bombchus are considered by the logic.

- ![Bombchus not in logic](ootrando_overworldmap_hamsda/images/logic_chus_no.png "Bombchus not in logic") Bombchus will never be considered by the logic and can be used to sequence break bomb locations.
- ![Bombchus in logic](ootrando_overworldmap_hamsda/images/logic_chus_yes.png "Bombchus in logic") Bombchus can be used as regular explosives like bombs in logic.

### Shuffle Deku Scrubs

This setting determines if all Deku Scrubs have randomized items.

- ![Scrubs not shuffled](ootrando_overworldmap_hamsda/images/scrub_shuffle_no.png "Scrubs not shuffled") Only the three Deku Scrubs that give actual items in the vanilla game can have random items.
- ![Scrubs shuffled](ootrando_overworldmap_hamsda/images/scrub_shuffle_yes.png "Scrubs shuffled") All Deku Scrubs can have random items.

### Shopsanity

This setting determines if Shopsanity is active.

- ![Shopsanity off](ootrando_overworldmap_hamsda/images/shopsanity_no.png "Shopsanity off") The shops have their regular items.
- ![Shopsanity on](ootrando_overworldmap_hamsda/images/shopsanity_yes.png "Shopsanity on") A varying amount of items in the shops is randomized.

### Gold Skulltulas

This setting determines which Gold Skulltulas are shown (especially useful for Tokensanity).

- ![Skulltulas hidden](ootrando_overworldmap_hamsda/images/skulltula_hide.png "Skulltulas hidden") Gold Skulltulas will be hidden.
- ![Skulltulas in dungeons](ootrando_overworldmap_hamsda/images/skulltula_dungeon.png "Skulltulas in dungeons") The Gold Skulltulas in dungeons will be displayed.
- ![Skulltulas everywhere](ootrando_overworldmap_hamsda/images/skulltula_all.png "Skulltulas everywhere") All Gold Skulltulas will be displayed.

### Magic Beans

This setting determines how the Magic Beans will be handled on the map.

- ![Beans off](ootrando_overworldmap_hamsda/images/bean_off.png "Beans off") The bean patches won't show up on the child map and adult locations will just show up once you have the bean item.
- ![Plant Beans](ootrando_overworldmap_hamsda/images/bean_plant.png "Plant Beans") The bean patches will show up on the child map and adult locations require those to be checked off (meaning the bean has actually been planted there).