// end and leave but different scenarios

// case 1: enemy is dead and enemy is boss
if(manager_students.battle_boss_on && manager_battle_remix.unitHp_curr[3] <= 0)
{
	get_battle_end_drops();
	heal_hp();
	if(manager_students.battle_boss_side_on == false)
		advance_phase();
	show_debug_message("THE BOSS IS DEAD YASS")
	manager_students.battle_boss_on = false;
	manager_students.battle_boss_side_on = false;
	manager_students.bosses[manager_students.boss_num] = true;
	show_debug_message(string(manager_students.bosses[manager_students.boss_num]))
	if(manager_students.boss_num == 10)
	{
		for(var i = 0; i < 11; i += 1)
			manager_students.bosses[i] = false;
		room = endRoom;
	}
	else
	{
		if(manager_students.boss_num < 5)
		{
			for(var i = 0; i < 11; i += 1)
				manager_students.bosses[i] = false;
			manager_students.explore_start_x = 80;
			manager_students.explore_start_y = 128;
			room = castle_bed;
		}
		else
			room = manager_students.prev_room_adv;
	}
}
// case 2: else you lost the full battle
else if(manager_battle_remix.unitHp_curr[0] <= 0 && manager_battle_remix.unitHp_curr[1] <= 0
&& manager_battle_remix.unitHp_curr[2] <= 0)
{
	heal_hp();
	
	manager_students.explore_start_x = 80;
	manager_students.explore_start_y = 128;
	room = castle_bed;
}
// case 3: other wise regular end
else
{
	get_battle_end_drops();
	manager_students.master_student_1.stat_hp_curr = manager_battle_remix.unitHp_curr[0];
	manager_students.master_student_2.stat_hp_curr = manager_battle_remix.unitHp_curr[1];
	manager_students.master_student_3.stat_hp_curr = manager_battle_remix.unitHp_curr[2];
	manager_students.master_student_1.stat_mp_curr = manager_battle_remix.unitMp_curr[0];
	manager_students.master_student_2.stat_mp_curr = manager_battle_remix.unitMp_curr[1];
	manager_students.master_student_3.stat_mp_curr = manager_battle_remix.unitMp_curr[2];
	manager_students.battle_boss_on = false;
	manager_students.battle_boss_side_on = false;
	room = manager_students.prev_room_adv;
}
