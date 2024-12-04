/// @description Enemy Spawning
// This code will randomly spawn the enemy somewhere within the room.
instance_create_layer(random(room_width), random(room_height), "enemy_layer", obj_enemyspawn);
alarm[0] = spawnrate;