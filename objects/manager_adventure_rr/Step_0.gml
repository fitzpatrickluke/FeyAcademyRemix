if(pause)
{
	movement_speed_x = 0;
	movement_speed_y = 0;
}
if(pause)
	exit;
	

if(keyboard_check(vk_up))
{
	animation_speed = 15;
	movement_on = true;
	movement_speed_y = move_spd * -1;
	movement_speed_x = 0;
	ice_move = 1;
	if(place_meeting(x,y+movement_speed_y,collision_obj))
	{
		if(!place_meeting(x,y+movement_speed_y,adventure_cloud))
			movement_speed_y = 0;
	}
	if(place_meeting(x,y,adventure_ice))
		ice_on = true;
	if(place_meeting(x,y+movement_speed_y,adventure_wayGate_down))
		movement_speed_y = 0;
}
else if(keyboard_check(vk_down))
{
	animation_speed = 15;
	movement_on  = true;
	movement_speed_y = move_spd;
	movement_speed_x = 0;
	ice_move = 2;
	if(place_meeting(x,y+movement_speed_y,collision_obj))
	{
		if(!place_meeting(x,y+movement_speed_y,adventure_cloud))
			movement_speed_y = 0;
	}
	if(place_meeting(x,y,adventure_ice))
		ice_on = true;
	if(place_meeting(x,y+movement_speed_y,adventure_wayGate_up))
		movement_speed_y = 0;
}
else if(keyboard_check(vk_right))
{
	animation_speed = 15;
	movement_on = true;
	student_right = true;
	movement_speed_x = move_spd;
	movement_speed_y = 0;
	ice_move = 3;
	if(place_meeting(x+movement_speed_x,y,collision_obj))
	{
		if(!place_meeting(x+movement_speed_x,y,adventure_cloud))
			movement_speed_x = 0;
	}
	if(place_meeting(x,y,adventure_ice))
		ice_on = true;
	if(place_meeting(x+movement_speed_x,y,adventure_wayGate_left))
		movement_speed_x = 0;
}
else if(keyboard_check(vk_left))
{
	animation_speed = 15;
	movement_on = true;
	student_right = false;
	movement_speed_x = move_spd * -1;
	movement_speed_y = 0;
	ice_move = 4;
	if(place_meeting(x+movement_speed_x,y,collision_obj))
	{
		if(!place_meeting(x+movement_speed_x,y,adventure_cloud))
			movement_speed_x = 0;
	}
	if(place_meeting(x,y,adventure_ice))
		ice_on = true;
	if(place_meeting(x+movement_speed_x,y,adventure_wayGate_right))
		movement_speed_x = 0;
}
else
{
	animation_speed = 15;
	movement_on = false;
	movement_speed_x = 0;
	movement_speed_y = 0;
	student_spr_num = 1;
	ice_move = 0;
}


x+=movement_speed_x;
y+=movement_speed_y;

// enetr overworld battles
if(place_meeting(x,y,adventure_boss))
{
	pause = true;
	var s = instance_place(x,y,adventure_boss);
	manager_students.boss_battle = true;
	//manager_students.bosses[s.boss_num] = true;
	manager_students.boss_num = s.boss_num;
	manager_students.explore_start_x = x;
	manager_students.explore_start_y = y;
	manager_students.prev_room_adv = room;
	with(manager_adventure_battle)
	{
		var num = s.num;
		manager_students.battle_enemy_num = num;
		gate_on = true;
		manager_students.battle_boss_on = true;
		if(s.side_boss)
			manager_students.battle_boss_side_on = true;
		fadeIn_battle = true;
		instance_destroy(s);
	}
}

// go up down stairs
if(place_meeting(x,y,adventure_stairs) && keyboard_check_pressed(vk_space))
{
	pause = true;
	var s = instance_place(x,y,adventure_stairs);
	manager_students.explore_start_x = s.px;
	manager_students.explore_start_y = s.py;
	manager_students.prev_room_adv = s.pr;
	room = s.pr;
}
if(place_meeting(x,y,adventure_stairs_rr) && keyboard_check_pressed(vk_space))
{
	pause = true;
	if(room == adventure_ancientAbyssf4)
	{
		manager_students.explore_start_x = 168;
		manager_students.explore_start_y = 616;
		manager_students.prev_room_adv = adventure_reflectionRift1;
		room = adventure_reflectionRift1;
	}
	else if(room == adventure_reflectionRift1)
	{
		manager_students.explore_start_x = 168;
		manager_students.explore_start_y = 936;
		manager_students.prev_room_adv = adventure_ancientAbyssf4;
		room = adventure_ancientAbyssf4;
	}
	
}
