// checking all the different possible end turns


show_debug_message("ALARM 4 YALL");
text_pause_on = false;
if(start_on)
{
	// start
	alarm[2] = text_time;
}
if(lose_on)
{
	// end
	alarm[3] = text_time_end;
}
if(levelUp_on)
{
	// end
	alarm[3] = text_time_end;
}
if(flee_on)
{
	// end
	alarm[3] = text_time_end;
}
if(curse_on)
{
	alarm[5] = text_time;
	set_battle_curse_damage();
}
if(heal_on)
{
	alarm[7] = text_time;
	set_battle_heal_end_turn();
}
if(end_on)
{
	// add enemy to codex
	if(!manager_enemy.codex_list[|manager_battle_remix.enemy_num])
		manager_enemy.codex_list[|manager_battle_remix.enemy_num] = true;
	// set and check for level up
	manager_students.master_student_1 = student_set_exp(manager_students.master_student_1,manager_students.student_1_wings,0);
	manager_students.master_student_2 = student_set_exp(manager_students.master_student_2,manager_students.student_2_wings,1);
	manager_students.master_student_3 = student_set_exp(manager_students.master_student_3,manager_students.student_3_wings,2);
	
	if(levelUp_on)
	{
		// else end
		end_on = false;
		text_pause_on = true;
		alarm[4] = text_pause;
		// heal
		heal_hp();
	}	
	else
	{
		// else end
		alarm[3] = text_time_end;
	}
}