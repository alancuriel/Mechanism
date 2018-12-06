# Mechanism
2D Game using Game Maker 2

Things to implement:
1. Arrowshooter, its trigger and arrow. Arrowshooter shots arrow when player stands on the trigger (shooter is on the wall, while the trigger is on the ground). In game, these three are denoted by obj_arrow_shooter, obj_arrow_trap and obj_arrow under traps folder. Assets of all of these objects are not finished yet and will be added later. The arrow can deal damage to both player and enemy.
Examples of these three can be found in room ground_level -> rm_cold_weapon_3.

2. Spiked iron plate and its trigger. Spiked iron plate initially hangs on the ceiling and if player stands on its trigger, it falls and deal damage. In game, these two are represented by obj_iron_plate and obj_iron_plate_trap. Again, art assets are not completed.
Examples of these two can be found in room ground_level -> rm_cold_weapon_2.

3. Iron bar and its trigger. Iron bar initially is hidden from player. But once player enters a certain area, it will be triggered and
appear on the map, blocking player's way out from an area only if the enemy in this area is defeated.
Examples of these two can be found in room ground_level -> rm_cold_weapon_1.

Some helpful notes about room:
Since room transition hasn't been implemented, to test a room, go to rm_title, open code for obj_menu_title. Under 'Key Up - Enter' event, change room name of room_goto() function to the room name you want to test.
