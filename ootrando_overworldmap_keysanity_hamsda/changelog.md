# Changelog

## 2.0.3.4

- added Deku Scrub shuffle support

## 2.0.3.3

- fixed open forest (forgot the `item_count` again... oops)

## 2.0.3.2

- fixed tektite grotto only on child map with gold scale
- fixed Gerudo archery range GS90 needs carpenters rescued
- changed Water Temple GS76 to be sequence breakable by hookshot extension
- changed adult SFM/LW behind Mido marked sequence breakable (will show up as completeable without sequence break if you have explosives due to limitations of the tracker)
- changed Shadow Temple GS81 to be sequence breakable w/o hookshot (can jumpslash from the chests)
- changed GS short names for (mini) dungeons to be recognizable when pinned
- fixed Fire Temple access
- fixed Spirit Temple GS99 to require strength2
- fixed Bottom of the Well basement reachable with dins and strength1

## 2.0.3.1

- fixed Shadow Temple falling spikes room upper chests strength can't be sequence broken
- fixed Haunted Wasteland GS
- fixed Jabu Jabus Belly GS 52-54
- changed how Gerudo Fortress settings are handled:
  - added key logic to carpenter rescue (1 key is marked as sequence break for the fast option)
  - added Gerudo symbol to indicate the carpenters being rescued
  - changed logic for everything that referenced card to use the carpenters instead
  - added the card to GTG access logic (its only use)
- Ocarina of Time no longer hosts the item so it works with ocarina shuffle
- fixed Spirit Temple southern hand adult accessibility

## 2.0.3.0

- improved Water Temple:
  - reduced small key requirements to absolute minimum needed
  - added bow and dins to reach medium level water
  - removed sequence breakable lullaby
- added lens+magic (sequence breakable) to clockwise GTG
- added a bit more logic to counter-clockwise GTG regarding explosives or small keys (though it is unlikely someone will actually use 2 keys for this)
- added ocarina to locations that require playing songs
- added lens options
- fixed Zora Tunic from shop always requires both wallet upgrades
- added a settings section to the layout and changed some icons
- changed/added a lot of logic from TRs fork
- added gerudo fortress small keys to tracker
- changed skulltulas to be separate icons for tokensanity
- changed icons:
  - default chests use a brown OoT style chest
  - freestanding HPs are HPs
  - boss HCs are HCs
  - song locations are grey notes
  - grey note songs are grey notes with text
- fixed logic for some trials chests, GS6, and GS17

## 2.0.2.1

- fixed orientation for pinned locations on vertical tracker layout
- fixed logic for DC without explosives
- fixed Fire Temple hammer chest with 6 small keys and hovers requires hammer

## 2.0.2.0

- added checkmarks to songs
- improved GTG:
  - split hammer pillars chests (one can be gotten without hammer)
  - remove sequence breakable hammer from clockwise path (not needed to open door)
- changed visibility based on age specific requirements for various locations
- changed layouts:
  - broadcast layout cosmetic fixes and added key counts
  - vertical tracker layout moved pinned locations below map to use space better

## 2.0.1.5

- fixed DMC wall HP reachable without explosives
- removed item counts from dungeons
- fixed Zoras Domain shop as adult
- changed Forest Temple courtyard logic
- improved Fire Temple:
  - lift1 sequence breakable
  - better restrictions for Volvagia
- changed GTG maze chests into separate locations and added key requirements

## 2.0.1.4

- first version of keysanity pack:
  - reworked layouts to include small key counts and boss keys
  - added key requirements to dungeons