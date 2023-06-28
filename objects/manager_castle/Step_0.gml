if(pause)
{
	movement_speed_x = 0;
	movement_speed_y = 0;
}

if(pause)
	exit;
	
if(keyboard_check_pressed(ord("Q")))
{
	student_level_up(manager_students.master_student_1, manager_students.student_1_wings);
	student_level_up(manager_students.master_student_2, manager_students.student_2_wings);
	student_level_up(manager_students.master_student_3, manager_students.student_3_wings);
}
/*	
if(keyboard_check_pressed(ord("Q")))
{
	manager_students.curr_phase +=1;
	if(manager_students.curr_phase == 7)
		final_aa = true;
	else if(manager_students.curr_phase == 9){
		final_aa = false; final_er = true;}
	else if(manager_students.curr_phase >= 11)
		manager_students.curr_phase = 11;
}
*/

if(keyboard_check(vk_up))
{

	animation_speed = 15;
	movement_on = true;
	movement_speed_y = -0.5;
	movement_speed_x = 0;
	if(keyboard_check(vk_shift))
	{
		movement_speed_y = -2;
		animation_speed = 6;
	}
	if(place_meeting(x,y+movement_speed_y,collision_obj))
		movement_speed_y = 0;
}
else if(keyboard_check(vk_down))
{
	animation_speed = 15;
	movement_on  = true;
	movement_speed_y = 0.5;
	movement_speed_x = 0;
	if(keyboard_check(vk_shift))
	{
		movement_speed_y = 2;
		animation_speed = 6;
	}
	if(place_meeting(x,y+movement_speed_y,collision_obj))
		movement_speed_y = 0;
}
else if(keyboard_check(vk_right))
{
	animation_speed = 15;
	movement_on = true;
	student_spr = student_spr_right;
	draw_right_on = true;
	movement_speed_x = 0.5;
	movement_speed_y = 0;
	if(keyboard_check(vk_shift))
	{
		movement_speed_x = 2;
		animation_speed = 6;
	}
	if(place_meeting(x+movement_speed_x,y,collision_obj))
		movement_speed_x = 0;
}
else if(keyboard_check(vk_left))
{
	animation_speed = 15;
	movement_on = true;
	student_spr = student_spr_left;
	draw_right_on = false;
	movement_speed_x = -0.5;
	movement_speed_y = 0;
	if(keyboard_check(vk_shift))
	{
		movement_speed_x = -2;
		animation_speed = 6;
	}
	if(place_meeting(x+movement_speed_x,y,collision_obj))
		movement_speed_x = 0;
}
else
{
	animation_speed = 15;
	movement_on = false;
	movement_speed_x = 0;
	movement_speed_y = 0;
	student_spr_num = 1;
}

if(place_meeting(x,y-2,castle_library_obj) && keyboard_check_pressed(vk_space))
{
	var l = instance_place(x,y-2,castle_library_obj);
	instance_create_depth(0,0,0,manager_castle_textBox_2);
	manager_castle_textBox_2.txt_length = l.txt_length;
	for(var i = 0; i < manager_castle_textBox_2.txt_length; i++)
	{
		manager_castle_textBox_2.txt[i] = l.txt[i];
	}
	manager_castle_textBox_2.txt_curr = manager_castle_textBox_2.txt[0];
	manager_castle_textBox_2.alarm[0] = 10;
	pause = true;
}

if(keyboard_check_pressed(vk_space) && place_meeting(x,y-2,manager_castle_cc)
&& manager_students.player_custom[0] == 1)
{
	var c = instance_place(x,y-2,manager_castle_cc);
	c.spr_hair_num = manager_students.spr_hair_num;
	c.spr_bang_num = manager_students.spr_bang_num;
	c.spr_hair_col_num = manager_students.spr_hair_col_num;
	c.spr_eye_num = manager_students.spr_eye_num;
	c.spr_top_num = manager_students.spr_top_num;
	c.spr_top_col_num = manager_students.spr_top_col_num;
	c.spr_bot_num = manager_students.spr_bot_num;
	c.spr_bot_col_num = manager_students.spr_bot_col_num;
	c.spr_shoe_num = manager_students.spr_shoe_num;
	c.spr_shoe_col_num = manager_students.spr_shoe_col_num;
	c.spr_acc_num = manager_students.spr_acc_num;
	c.spr_acc_col_num = manager_students.spr_acc_col_num
	c.cc_on = true;
	pause = true;
}


if(place_meeting(x,y-2,castle_student) && keyboard_check_pressed(vk_space))
{
	var s = instance_place(x,y-2,castle_student);
	instance_create_depth(0,0,0,manager_castle_textBox);
	manager_castle_textBox.spr_student = s.spr_full;
	manager_castle_textBox.txt_length = s.txt_length;
	for(var i = 0; i < manager_castle_textBox.txt_length; i++)
	{
		manager_castle_textBox.txt[i] = s.txt[i];
	}
	manager_castle_textBox.txt_curr = manager_castle_textBox.txt[0];
	manager_castle_textBox.alarm[0] = 10;
	pause = true;
}

if(place_meeting(x,y-2,castle_shopKeeper) && keyboard_check_pressed(vk_space))
{
	// old no talking just go to room
	/*
	manager_students.explore_start_x = manager_castle.x;
	manager_students.explore_start_y = manager_castle.y;
	manager_students.prev_room_adv = room;
	room = shopRoom;
	*/
	instance_create_depth(0,0,0,manager_castle_textBox);
	manager_castle_textBox.spr_student = spr_shop_2;
	manager_castle_textBox.txt_length = 1;
	manager_castle_textBox.txt[0] = "Welcome to the shop!";
	manager_castle_textBox.txt_curr = manager_castle_textBox.txt[0];
	manager_castle_textBox.alarm[0] = 10;
	manager_castle_textBox.shop_on = true;
	pause = true;
}

if(place_meeting(x,y-2,castle_teacher) && keyboard_check_pressed(vk_space))
{
	var s = instance_place(x,y-2,castle_teacher);
	instance_create_depth(0,0,0,manager_castle_textBox);
	manager_castle_textBox.spr_student = s.spr_full;
	manager_castle_textBox.txt_length = s.txt_length;
	for(var i = 0; i < manager_castle_textBox.txt_length; i++)
	{
		manager_castle_textBox.txt[i] = s.txt[i];
	}
	manager_castle_textBox.txt_curr = manager_castle_textBox.txt[0];
	manager_castle_textBox.alarm[0] = 10;
	pause = true;
}

if(place_meeting(x-2,y,castle_teacher_2) && keyboard_check_pressed(vk_space)
&& !instance_exists(manager_castle_textBox))
{
	var s = instance_place(x-2,y,castle_teacher_2);
	instance_create_depth(0,0,0,manager_castle_textBox);
	manager_castle_textBox.spr_student = s.spr_full;
	manager_castle_textBox.txt_length = s.txt_length;
	for(var i = 0; i < manager_castle_textBox.txt_length; i++)
	{
		manager_castle_textBox.txt[i] = s.txt[i];
	}
	manager_castle_textBox.txt_curr = manager_castle_textBox.txt[0];
	manager_castle_textBox.alarm[0] = 10;
	pause = true;
}

if(place_meeting(x+2,y,castle_teacher_2) && keyboard_check_pressed(vk_space)
&& !instance_exists(manager_castle_textBox))
{
	var s = instance_place(x+2,y,castle_teacher_2);
	instance_create_depth(0,0,0,manager_castle_textBox);
	manager_castle_textBox.spr_student = s.spr_full;
	manager_castle_textBox.txt_length = s.txt_length;
	for(var i = 0; i < manager_castle_textBox.txt_length; i++)
	{
		manager_castle_textBox.txt[i] = s.txt[i];
	}
	manager_castle_textBox.txt_curr = manager_castle_textBox.txt[0];
	manager_castle_textBox.alarm[0] = 10;
	pause = true;
}

x+=movement_speed_x;
y+=movement_speed_y;
