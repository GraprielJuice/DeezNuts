/// @description Basic Player Controls
// This forces the sprite to face wherever the cursor is pointing
image_angle = point_direction(x, y, mouse_x, mouse_y);

// Binds keys to each value, allowing movement
if (keyboard_check(ord("D")))
	if (!place_meeting(x + spd, y, obj_wall))
	{
		x = x + spd;
	}
if (keyboard_check(ord("A")))
	if (!place_meeting(x - spd, y, obj_wall))
	{
		x = x - spd;
	}
if (keyboard_check(ord("W")))
	if (!place_meeting(x, y - spd, obj_wall))
	{
		y = y - spd;
	}
if (keyboard_check(ord("S")))
	if (!place_meeting(x, y + spd, obj_wall))
	{
		y = y + spd;
	}


// When the left mouse button is pressed and the weapon cooldown is 
if (mouse_check_button(mb_left)) && (gun_cooldown < 1)
{
	instance_create_layer(x, y, "bullet_layer", obj_bullet);
	gun_cooldown = 10;
}

if (mouse_check_button(mb_right)) && (melee_cooldown < 1)
{
	var xx = x + lengthdir_x(90, image_angle)
	var yy = y + lengthdir_y(90, image_angle)
	instance_create_layer(xx, yy,"Instances", obj_meleehitbox);
	melee_cooldown = 50
}

if global.playerhp = 0
{
	global.lives -= 1;
	global.playerhp = 100;
	global.hunger = 100;
}

if global.lives = 0
{
	game_restart()
}

gun_cooldown = gun_cooldown - 1;
melee_cooldown = melee_cooldown - 1;

global.hunger -= 1/8

if global.playerhp > 100 
{
	global.playerhp = 100;
}

if global.hunger > 100 
{
	global.hunger = 100;
}

if global.hunger = 0
{
	global.lives -= 1;
	global.hunger = 100;
	global.playerhp = 100;
}