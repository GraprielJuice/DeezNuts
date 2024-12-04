/// @description Player Interactions
// This ensures the enemy heads towards the player.
image_angle = direction

if (instance_exists(obj_player))
{
	move_towards_point(obj_player.x, obj_player.y, spd)
}

// When the enemy dies, it should make a death noise, give the player score and replenish player hunger.
if (hp) <= 0
{
	audio_sound_pitch(snd_death, random_range(0.8, 1.2))
	audio_play_sound(snd_death, 1, false);
	with (obj_gamemanager) global.score = global.score + 5;
	global.hunger += 20;
	// This will select a random number between 1 and 10, if it is a 9 then it will drop a health pickup.
	if (random(10) >= 9)
		{
			instance_create_layer(x, y, "Instances", obj_healthpickup);
		}
	instance_destroy();
}
	