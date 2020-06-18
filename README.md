# Zelda-Redux
A game made to "replicate" Zelda NES in Game Maker Studio 2 
-------------------------------------------------------------------------------------------------------------------------------------------
A basic version of Zelda NES recreated in Game Maker Studio 2.<br>
<br>
FEATURES:<br>
First dungeon fully mapped out<br>
Bombable walls<br>
Usable Sword and Bombs<br>
Map and Compass<br>
Keys<br>
Scoring System<br>
<br>

CONTROLS:<br>
1 > Equip Bombs<br>
2 > Equip Boomerand (Doesn't function)<br>
Z > Sword<br>
X > Use Item<br>
R > Restart Game<br>
Arrow Keys to move<br>
<br>

RULES:<br>
Unlocking doors, blowing up secret walls, beating enemies, and collecting items scores points.<br>
Getting hit loses points.<br>
"Win" by finding the triforce piece (the game doesn't end there currently)<br>
You can use the compass and map to track where you are in the dungeon<br>
If you can find the secret star, you can participate in a no-hit challenge. Don't get hit while holding the star or it will break!
(Normally it'd result in you losing all points at the end if broken, or it would award many points. However this wasn't programmed. too bad!)<br>
You can find a heart container to increase your maximum health.<br>
<br>

REFLECTION:<br>
This was made for fun and to learn how to make a more intricate game without too much outside help. 
Ultimately the knockback from enemies is pretty terrible, as well as the AI for them, but I had fun.
The gameplay feels fairly fun. However, if I was to remake the entire Zelda NES map, I'd have to completely redesign how all of this works.
There would be memory leak issues due to almost all objects being persistant. So as you go along the amount of ram used increases. With a whole game map, this would be absurd.
However, with this small area in this game, it is not a big deal. Eventually I may update this to have a leaderboard and a proper ending, maybe with some extra objectives in the dungeon to play.
I'd also like to add a start menu and maybe a minigame or two for fun. I don't know if that will ever happen, though.
It should go without question that the vast majority of art was taken from the original game. That being said, I drew the
boomerang GUI element and I love the way it looks. If I recall correcetly, this also was me trying out using a finite state machine to control a character.



