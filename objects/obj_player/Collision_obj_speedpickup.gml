/// @description Insert description here
// You can write your code in this editor
if powerup_active = false
{
	alarm[0] = 180;
	spd = spd * 1.5;
	powerup_active = true;
	instance_destroy(other);
}
