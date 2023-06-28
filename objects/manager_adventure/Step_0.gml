if(pause)
{
	movement_speed_x = 0;
	movement_speed_y = 0;
}
if(pause)
	exit;
	
if(!ice_on)
{
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
}
else
{
	if(place_meeting(x,y+movement_speed_y,collision_obj))
	{
		movement_speed_y = 0;
		ice_on = false;
	}
	if(place_meeting(x+movement_speed_x,y,collision_obj))
	{
		movement_speed_x = 0;
		ice_on = false;
	}
	if(!place_meeting(x,y,adventure_ice))
		ice_on = false;
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
// drop down holes
if(place_meeting(x,y,adventure_hole) && keyboard_check_pressed(vk_space))
{
	pause = true;
	var s = instance_place(x,y,adventure_hole);
	manager_students.explore_start_x = s.px;
	manager_students.explore_start_y = s.py;
	manager_students.prev_room_adv = s.pr;
	room = s.pr;
}
	
if(place_meeting(x,y,adventure_deepHole) && keyboard_check_pressed(vk_space))
	{
		pause = true;
		var s = instance_place(x,y,adventure_deepHole);
		manager_students.explore_start_x = s.px;
		manager_students.explore_start_y = s.py;
		manager_students.prev_room_adv = s.pr;
		room = s.pr;
	}

// warp
if(place_meeting(x,y,adventure_warp) && keyboard_check_pressed(vk_space))
{
	pause = true;
	var s = instance_place(x,y,adventure_warp);
	manager_students.explore_start_x = s.px;
	manager_students.explore_start_y = s.py;
	manager_students.prev_room_adv = s.pr;
	room = s.pr;
}

if(place_meeting(x,y,adventure_deepWarp) && keyboard_check_pressed(vk_space))
{
	pause = true;
	var s = instance_place(x,y,adventure_deepWarp);
	manager_students.explore_start_x = s.px;
	manager_students.explore_start_y = s.py;
	manager_students.prev_room_adv = s.pr;
	room = s.pr;
}

// warp AA
if(place_meeting(x,y,adventure_set_phase_aa) && keyboard_check_pressed(vk_space)
&& manager_students.bosses[5])
{
	pause = true;
	var s = instance_place(x,y,adventure_set_phase_aa);
	manager_students.explore_start_x = s.px;
	manager_students.explore_start_y = s.py;
	manager_students.prev_room_adv = s.pr;
	manager_students.curr_phase = phase.phase_aa;
	manager_students.stratum_curr = 6;
	manager_students.final_aa = true;
	for(var i = 0; i < 11; i += 1)
		manager_students.bosses[i] = false;
	room = s.pr;
}
// warp ER
if(place_meeting(x,y,adventure_set_phase_er) && keyboard_check_pressed(vk_space)
&& manager_students.bosses[5])
{
	pause = true;
	var s = instance_place(x,y,adventure_set_phase_er);
	manager_students.explore_start_x = s.px;
	manager_students.explore_start_y = s.py;
	manager_students.prev_room_adv = s.pr;
	manager_students.curr_phase = phase.phase_er;
	manager_students.stratum_curr = 7;
	manager_students.final_er = true;
	for(var i = 0; i < 11; i += 1)
		manager_students.bosses[i] = false;
	room = s.pr;
}

// return if have not unlocked
if(place_meeting(x,y,castle_return_obj))
{
	var s = instance_place(x,y,castle_return_obj);
	instance_create_depth(0,0,0,manager_castle_textBox_3);
	manager_castle_textBox_3.txt_length = s.txt_length;
	for(var i = 0; i < manager_castle_textBox_3.txt_length; i++)
	{
		manager_castle_textBox_3.txt[i] = s.txt[i];
	}
	manager_castle_textBox_3.txt_curr = manager_castle_textBox_3.txt[0];
	manager_castle_textBox_3.alarm[0] = 10;
	pause = true;
}

// update the map
mapx = x div 64;
mapy = y div 64;

var mp = maps.basic;

//if(place_meeting(x,y,adventure_ice))
//	mp = maps.ice;
//if(place_meeting(x,y,adventure_cloud))
//	mp = maps.cloud;
if(place_meeting(x,y,adventure_stairs))
	mp = maps.stairs;
if(place_meeting(x,y,adventure_hole) || place_meeting(x,y,adventure_deepHole))
	mp = maps.hole;
if(place_meeting(x,y,adventure_warp) || place_meeting(x,y,adventure_deepWarp))
	mp = maps.warp;


switch(room)
{
	case adventure_flowerFieldsf1:
	if(!manager_maps.pmaps_ff_f1[# mapy, mapx] ||
	(mp != maps.basic && manager_maps.pmaps_ff_f1[# mapy, mapx] = maps.basic))
		manager_maps.pmaps_ff_f1[# mapy, mapx] = mp;
	break;
	case adventure_flowerFieldsf2:
	if(!manager_maps.pmaps_ff_f2[# mapy, mapx] ||
	(mp != maps.basic && manager_maps.pmaps_ff_f2[# mapy, mapx] = maps.basic))
		manager_maps.pmaps_ff_f2[# mapy, mapx] = mp;
	break;
	case adventure_flowerFieldsf3:
	if(!manager_maps.pmaps_ff_f3[# mapy, mapx] ||
	(mp != maps.basic && manager_maps.pmaps_ff_f3[# mapy, mapx] = maps.basic))
		manager_maps.pmaps_ff_f3[# mapy, mapx] = mp;
	break;
	case adventure_flowerFieldsf4:
	if(!manager_maps.pmaps_ff_f4[# mapy, mapx] ||
	(mp != maps.basic && manager_maps.pmaps_ff_f4[# mapy, mapx] = maps.basic))
		manager_maps.pmaps_ff_f4[# mapy, mapx] = mp;
	break;
	case adventure_willowWoodsf1:
	if(!manager_maps.pmaps_ww_f1[# mapy, mapx] ||
	(mp != maps.basic && manager_maps.pmaps_ww_f1[# mapy, mapx] = maps.basic))
		manager_maps.pmaps_ww_f1[# mapy, mapx] = mp;
	break;
	case adventure_willowWoodsf2:
	if(!manager_maps.pmaps_ww_f2[# mapy, mapx] ||
	(mp != maps.basic && manager_maps.pmaps_ww_f2[# mapy, mapx] = maps.basic))
		manager_maps.pmaps_ww_f2[# mapy, mapx] = mp;
	break;
	case adventure_willowWoodsf3:
	if(!manager_maps.pmaps_ww_f3[# mapy, mapx] ||
	(mp != maps.basic && manager_maps.pmaps_ww_f3[# mapy, mapx] = maps.basic))
		manager_maps.pmaps_ww_f3[# mapy, mapx] = mp;
	break;
	case adventure_willowWoodsf4:
	if(!manager_maps.pmaps_ww_f4[# mapy, mapx] ||
	(mp != maps.basic && manager_maps.pmaps_ww_f4[# mapy, mapx] = maps.basic))
		manager_maps.pmaps_ww_f4[# mapy, mapx] = mp;
	break;
	case adventure_autumnFallsf1:
	if(!manager_maps.pmaps_af_f1[# mapy, mapx] ||
	(mp != maps.basic && manager_maps.pmaps_af_f1[# mapy, mapx] = maps.basic))
		manager_maps.pmaps_af_f1[# mapy, mapx] = mp;
	break;
	case adventure_autumnFallsf2:
	if(!manager_maps.pmaps_af_f2[# mapy, mapx] ||
	(mp != maps.basic && manager_maps.pmaps_af_f2[# mapy, mapx] = maps.basic))
		manager_maps.pmaps_af_f2[# mapy, mapx] = mp;
	break;
	case adventure_autumnFallsf3:
	if(!manager_maps.pmaps_af_f3[# mapy, mapx] ||
	(mp != maps.basic && manager_maps.pmaps_af_f3[# mapy, mapx] = maps.basic))
		manager_maps.pmaps_af_f3[# mapy, mapx] = mp;
	break;
	case adventure_autumnFallsf4:
	if(!manager_maps.pmaps_af_f4[# mapy, mapx] ||
	(mp != maps.basic && manager_maps.pmaps_af_f4[# mapy, mapx] = maps.basic))
		manager_maps.pmaps_af_f4[# mapy, mapx] = mp;
	break;
	case adventure_snowflakePointf1:
	if(!manager_maps.pmaps_sp_f1[# mapy, mapx] ||
	(mp != maps.basic && manager_maps.pmaps_sp_f1[# mapy, mapx] = maps.basic))
		manager_maps.pmaps_sp_f1[# mapy, mapx] = mp;
	break;
	case adventure_snowflakePointf2:
	if(!manager_maps.pmaps_sp_f2[# mapy, mapx] ||
	(mp != maps.basic && manager_maps.pmaps_sp_f2[# mapy, mapx] = maps.basic))
		manager_maps.pmaps_sp_f2[# mapy, mapx] = mp;
	break;
	case adventure_snowflakePointf3:
	if(!manager_maps.pmaps_sp_f3[# mapy, mapx] ||
	(mp != maps.basic && manager_maps.pmaps_sp_f3[# mapy, mapx] = maps.basic))
		manager_maps.pmaps_sp_f3[# mapy, mapx] = mp;
	break;
	case adventure_snowflakePointf4:
	if(!manager_maps.pmaps_sp_f4[# mapy, mapx] ||
	(mp != maps.basic && manager_maps.pmaps_sp_f4[# mapy, mapx] = maps.basic))
		manager_maps.pmaps_sp_f4[# mapy, mapx] = mp;
	break;
	case adventure_sakuraStepsf1:
	if(!manager_maps.pmaps_ss_f1[# mapy, mapx] ||
	(mp != maps.basic && manager_maps.pmaps_ss_f1[# mapy, mapx] = maps.basic))
		manager_maps.pmaps_ss_f1[# mapy, mapx] = mp;
	break;
	case adventure_sakuraStepsf2:
	if(!manager_maps.pmaps_ss_f2[# mapy, mapx] ||
	(mp != maps.basic && manager_maps.pmaps_ss_f2[# mapy, mapx] = maps.basic))
		manager_maps.pmaps_ss_f2[# mapy, mapx] = mp;
	break;
	case adventure_sakuraStepsf3:
	if(!manager_maps.pmaps_ss_f3[# mapy, mapx] ||
	(mp != maps.basic && manager_maps.pmaps_ss_f3[# mapy, mapx] = maps.basic))
		manager_maps.pmaps_ss_f3[# mapy, mapx] = mp;
	break;
	case adventure_sakuraStepsf4:
	if(!manager_maps.pmaps_ss_f4[# mapy, mapx] ||
	(mp != maps.basic && manager_maps.pmaps_ss_f4[# mapy, mapx] = maps.basic))
		manager_maps.pmaps_ss_f4[# mapy, mapx] = mp;
	break;
	case adventure_feyTemplef1:
	if(!manager_maps.pmaps_ft_f1[# mapy, mapx] ||
	(mp != maps.basic && manager_maps.pmaps_ft_f1[# mapy, mapx] = maps.basic))
		manager_maps.pmaps_ft_f1[# mapy, mapx] = mp;
	break;
	case adventure_feyTemplef2:
	if(!manager_maps.pmaps_ft_f2[# mapy, mapx] ||
	(mp != maps.basic && manager_maps.pmaps_ft_f2[# mapy, mapx] = maps.basic))
		manager_maps.pmaps_ft_f2[# mapy, mapx] = mp;
	break;
	case adventure_feyTemplef3:
	if(!manager_maps.pmaps_ft_f3[# mapy, mapx] ||
	(mp != maps.basic && manager_maps.pmaps_ft_f3[# mapy, mapx] = maps.basic))
		manager_maps.pmaps_ft_f3[# mapy, mapx] = mp;
	break;
	case adventure_feyTemplef4:
	if(!manager_maps.pmaps_ft_f4[# mapy, mapx] ||
	(mp != maps.basic && manager_maps.pmaps_ft_f4[# mapy, mapx] = maps.basic))
		manager_maps.pmaps_ft_f4[# mapy, mapx] = mp;
	break;
	case adventure_ancientAbyssf1:
	if(!manager_maps.pmaps_aa_f1[# mapy, mapx] ||
	(mp != maps.basic && manager_maps.pmaps_aa_f1[# mapy, mapx] = maps.basic))
		manager_maps.pmaps_aa_f1[# mapy, mapx] = mp;
	break;
	case adventure_ancientAbyssf2:
	if(!manager_maps.pmaps_aa_f2[# mapy, mapx] ||
	(mp != maps.basic && manager_maps.pmaps_aa_f2[# mapy, mapx] = maps.basic))
		manager_maps.pmaps_aa_f2[# mapy, mapx] = mp;
	break;
	case adventure_ancientAbyssf3:
	if(!manager_maps.pmaps_aa_f3[# mapy, mapx] ||
	(mp != maps.basic && manager_maps.pmaps_aa_f3[# mapy, mapx] = maps.basic))
		manager_maps.pmaps_aa_f3[# mapy, mapx] = mp;
	break;
	case adventure_ancientAbyssf4:
	if(!manager_maps.pmaps_aa_f4[# mapy, mapx] ||
	(mp != maps.basic && manager_maps.pmaps_aa_f4[# mapy, mapx] = maps.basic))
		manager_maps.pmaps_aa_f4[# mapy, mapx] = mp;
	break;
	case adventure_endRainbowf1:
	if(!manager_maps.pmaps_er_f1[# mapy, mapx] ||
	(mp != maps.basic && manager_maps.pmaps_er_f1[# mapy, mapx] = maps.basic))
		manager_maps.pmaps_er_f1[# mapy, mapx] = mp;
	break;
	case adventure_endRainbowf2:
	if(!manager_maps.pmaps_er_f2[# mapy, mapx] ||
	(mp != maps.basic && manager_maps.pmaps_er_f2[# mapy, mapx] = maps.basic))
		manager_maps.pmaps_er_f2[# mapy, mapx] = mp;
	break;
	case adventure_endRainbowf3:
	if(!manager_maps.pmaps_er_f3[# mapy, mapx] ||
	(mp != maps.basic && manager_maps.pmaps_er_f3[# mapy, mapx] = maps.basic))
		manager_maps.pmaps_er_f3[# mapy, mapx] = mp;
	break;
	case adventure_endRainbowf4:
	if(!manager_maps.pmaps_er_f4[# mapy, mapx] ||
	(mp != maps.basic && manager_maps.pmaps_er_f4[# mapy, mapx] = maps.basic))
		manager_maps.pmaps_er_f4[# mapy, mapx] = mp;
	break;
}
