///@description set_student_equip_stat
///@arg student_num
///@arg equip_num
///@arg removing(TF)
function set_student_equip_stat(argument0, argument1, argument2)
{
	var num = argument1;
	var grid = manager_items.equip_list;
	var check = argument2;
	switch(argument0)
	{
		case 1:
		switch(grid[# num, 1])
		{
			case equip.mag_up:
				if(check)
					manager_students.master_student_1.stat_magic -= grid[# num, 2];
				else 
					manager_students.master_student_1.stat_magic += grid[# num, 2];
			break;
			case equip.def_up:
			if(check)
					manager_students.master_student_1.stat_defense -= grid[# num, 2];
				else 
					manager_students.master_student_1.stat_defense += grid[# num, 2];
			break;
			case equip.spd_up:
			if(check)
					manager_students.master_student_1.stat_speed -= grid[# num, 2];
				else 
					manager_students.master_student_1.stat_speed += grid[# num, 2];
			break;
			case equip.skl_up:
			if(check)
					manager_students.master_student_1.stat_skill -= grid[# num, 2];
				else 
					manager_students.master_student_1.stat_skill += grid[# num, 2];
			break;
			case equip.mag_spd_up:
				if(check)
				{
					manager_students.master_student_1.stat_magic -= grid[# num, 2];
					manager_students.master_student_1.stat_speed -= grid[# num, 2];
				}
				else 
				{
					manager_students.master_student_1.stat_magic += grid[# num, 2];
					manager_students.master_student_1.stat_speed += grid[# num, 2];
				}
			break;
			case equip.def_spd_up:
				if(check)
				{
					manager_students.master_student_1.stat_defense -= grid[# num, 2];
					manager_students.master_student_1.stat_speed -= grid[# num, 2];
				}
				else 
				{
					manager_students.master_student_1.stat_defense += grid[# num, 2];
					manager_students.master_student_1.stat_speed += grid[# num, 2];
				}
			break;
			case equip.mag_def_up:
				if(check)
				{
					manager_students.master_student_1.stat_magic -= grid[# num, 2];
					manager_students.master_student_1.stat_defense -= grid[# num, 2];
				}
				else 
				{
					manager_students.master_student_1.stat_magic += grid[# num, 2];
					manager_students.master_student_1.stat_defense += grid[# num, 2];
				}
			break;
			case equip.hp_up:
				if(check)
					manager_students.master_student_1.stat_hp -= grid[# num, 2];
				else
					manager_students.master_student_1.stat_hp += grid[# num, 2];
			break;
			case equip.mp_up:
				if(check)
					manager_students.master_student_1.stat_mp -= grid[# num, 2];
				else
					manager_students.master_student_1.stat_mp += grid[# num, 2];
			break;
			case equip.ultimate_sklToMag:
				if(check)
					manager_students.master_student_1.stat_skill -= grid[# num, 2];
				else
					manager_students.master_student_1.stat_skill += grid[# num, 2];
			break;
			case equip.ultimate_fey:
				if(check)
					manager_students.master_student_1.stat_defense -= grid[# num, 2];
				else
					manager_students.master_student_1.stat_defense += grid[# num, 2];
			break;
			case equip.ultimate_dragon:
				if(check)
					manager_students.master_student_1.stat_magic -= grid[# num, 2];
				else
					manager_students.master_student_1.stat_magic += grid[# num, 2];
			break;
			case equip.ultimate_absorb:
				if(check)
					manager_students.master_student_1.stat_defense -= grid[# num, 2];
				else
					manager_students.master_student_1.stat_defense += grid[# num, 2];
			break;
			case equip.ultimate_heal_spd:
				if(check)
					manager_students.master_student_1.stat_speed -= grid[# num, 2];
				else
					manager_students.master_student_1.stat_speed += grid[# num, 2];
			break;
			case equip.ultimate_heal_mag:
				if(check)
					manager_students.master_student_1.stat_magic -= grid[# num, 2];
				else
					manager_students.master_student_1.stat_magic += grid[# num, 2];
			break;
		}
		break;
		
		case 2:
		switch(grid[# num, 1])
		{
			case equip.mag_up:
				if(check)
					manager_students.master_student_2.stat_magic -= grid[# num, 2];
				else 
					manager_students.master_student_2.stat_magic += grid[# num, 2];
			break;
			case equip.def_up:
			if(check)
					manager_students.master_student_2.stat_defense -= grid[# num, 2];
				else 
					manager_students.master_student_2.stat_defense += grid[# num, 2];
			break;
			case equip.spd_up:
			if(check)
					manager_students.master_student_2.stat_speed -= grid[# num, 2];
				else 
					manager_students.master_student_2.stat_speed += grid[# num, 2];
			break;
			case equip.skl_up:
			if(check)
					manager_students.master_student_2.stat_skill -= grid[# num, 2];
				else 
					manager_students.master_student_2.stat_skill += grid[# num, 2];
			break;
			case equip.mag_spd_up:
				if(check)
				{
					manager_students.master_student_2.stat_magic -= grid[# num, 2];
					manager_students.master_student_2.stat_speed -= grid[# num, 2];
				}
				else 
				{
					manager_students.master_student_2.stat_magic += grid[# num, 2];
					manager_students.master_student_2.stat_speed += grid[# num, 2];
				}
			break;
			case equip.def_spd_up:
				if(check)
				{
					manager_students.master_student_2.stat_defense -= grid[# num, 2];
					manager_students.master_student_2.stat_speed -= grid[# num, 2];
				}
				else 
				{
					manager_students.master_student_2.stat_defense += grid[# num, 2];
					manager_students.master_student_2.stat_speed += grid[# num, 2];
				}
			break;
			case equip.mag_def_up:
				if(check)
				{
					manager_students.master_student_2.stat_magic -= grid[# num, 2];
					manager_students.master_student_2.stat_defense -= grid[# num, 2];
				}
				else 
				{
					manager_students.master_student_2.stat_magic += grid[# num, 2];
					manager_students.master_student_2.stat_defense += grid[# num, 2];
				}
			break;
			case equip.hp_up:
				if(check)
					manager_students.master_student_2.stat_hp -= grid[# num, 2];
				else
					manager_students.master_student_2.stat_hp += grid[# num, 2];
			break;
			case equip.mp_up:
				if(check)
					manager_students.master_student_2.stat_mp -= grid[# num, 2];
				else
					manager_students.master_student_2.stat_mp += grid[# num, 2];
			break;
			case equip.ultimate_sklToMag:
				if(check)
					manager_students.master_student_2.stat_skill -= grid[# num, 2];
				else
					manager_students.master_student_2.stat_skill += grid[# num, 2];
			break;
			case equip.ultimate_fey:
				if(check)
					manager_students.master_student_2.stat_defense -= grid[# num, 2];
				else
					manager_students.master_student_2.stat_defense += grid[# num, 2];
			break;
			case equip.ultimate_dragon:
				if(check)
					manager_students.master_student_2.stat_magic -= grid[# num, 2];
				else
					manager_students.master_student_2.stat_magic += grid[# num, 2];
			break;
			case equip.ultimate_absorb:
				if(check)
					manager_students.master_student_2.stat_defense -= grid[# num, 2];
				else
					manager_students.master_student_2.stat_defense += grid[# num, 2];
			break;
			case equip.ultimate_heal_spd:
				if(check)
					manager_students.master_student_2.stat_speed -= grid[# num, 2];
				else
					manager_students.master_student_2.stat_speed += grid[# num, 2];
			break;
			case equip.ultimate_heal_mag:
				if(check)
					manager_students.master_student_2.stat_magic -= grid[# num, 2];
				else
					manager_students.master_student_2.stat_magic += grid[# num, 2];
			break;
		}
		break;
		
		case 3:
		switch(grid[# num, 1])
		{
			case equip.mag_up:
				if(check)
					manager_students.master_student_3.stat_magic -= grid[# num, 2];
				else 
					manager_students.master_student_3.stat_magic += grid[# num, 2];
			break;
			case equip.def_up:
			if(check)
					manager_students.master_student_3.stat_defense -= grid[# num, 2];
				else 
					manager_students.master_student_3.stat_defense += grid[# num, 2];
			break;
			case equip.spd_up:
			if(check)
					manager_students.master_student_3.stat_speed -= grid[# num, 2];
				else 
					manager_students.master_student_3.stat_speed += grid[# num, 2];
			break;
			case equip.skl_up:
			if(check)
					manager_students.master_student_3.stat_skill -= grid[# num, 2];
				else 
					manager_students.master_student_3.stat_skill += grid[# num, 2];
			break;
			case equip.mag_spd_up:
				if(check)
				{
					manager_students.master_student_3.stat_magic -= grid[# num, 2];
					manager_students.master_student_3.stat_speed -= grid[# num, 2];
				}
				else 
				{
					manager_students.master_student_3.stat_magic += grid[# num, 2];
					manager_students.master_student_3.stat_speed += grid[# num, 2];
				}
			break;
			case equip.def_spd_up:
				if(check)
				{
					manager_students.master_student_3.stat_defense -= grid[# num, 2];
					manager_students.master_student_3.stat_speed -= grid[# num, 2];
				}
				else 
				{
					manager_students.master_student_3.stat_defense += grid[# num, 2];
					manager_students.master_student_3.stat_speed += grid[# num, 2];
				}
			break;
			case equip.mag_def_up:
				if(check)
				{
					manager_students.master_student_3.stat_magic -= grid[# num, 2];
					manager_students.master_student_3.stat_defense -= grid[# num, 2];
				}
				else 
				{
					manager_students.master_student_3.stat_magic += grid[# num, 2];
					manager_students.master_student_3.stat_defense += grid[# num, 2];
				}
			break;
			case equip.hp_up:
				if(check)
					manager_students.master_student_3.stat_hp -= grid[# num, 2];
				else
					manager_students.master_student_3.stat_hp += grid[# num, 2];
			break;
			case equip.mp_up:
				if(check)
					manager_students.master_student_3.stat_mp -= grid[# num, 2];
				else
					manager_students.master_student_3.stat_mp += grid[# num, 2];
			break;
			case equip.ultimate_sklToMag:
				if(check)
					manager_students.master_student_3.stat_skill -= grid[# num, 2];
				else
					manager_students.master_student_3.stat_skill += grid[# num, 2];
			break;
			case equip.ultimate_fey:
				if(check)
					manager_students.master_student_3.stat_defense -= grid[# num, 2];
				else
					manager_students.master_student_3.stat_defense += grid[# num, 2];
			break;
			case equip.ultimate_dragon:
				if(check)
					manager_students.master_student_3.stat_magic -= grid[# num, 2];
				else
					manager_students.master_student_3.stat_magic += grid[# num, 2];
			break;
			case equip.ultimate_absorb:
				if(check)
					manager_students.master_student_3.stat_defense -= grid[# num, 2];
				else
					manager_students.master_student_3.stat_defense += grid[# num, 2];
			break;
			case equip.ultimate_heal_spd:
				if(check)
					manager_students.master_student_3.stat_speed -= grid[# num, 2];
				else
					manager_students.master_student_3.stat_speed += grid[# num, 2];
			break;
			case equip.ultimate_heal_mag:
				if(check)
					manager_students.master_student_3.stat_magic -= grid[# num, 2];
				else
					manager_students.master_student_3.stat_magic += grid[# num, 2];
			break;
		}
		break;
	}
}