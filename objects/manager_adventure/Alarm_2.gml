// set the enemy
if(encounter_on)
{
	if(movement_on && !ice_on && check_enter_battle())
	{
		randomize();
		var num = irandom(1);
		if(num == 0)
		{
			encounter_num += 1;
			manager_adventure_maps.spr_mon_num += 1;
		}
		if(encounter_num > 3)
		{
			manager_adventure_maps.spr_mon_num = 1;
			encounter_num = 1;
			// enter battle
			pause = true;
			manager_students.explore_start_x = x;
			manager_students.explore_start_y = y;
			manager_students.prev_room_adv = room;
			with(manager_adventure_battle)
			{
				gate_on = true;
				room_change = true;
				alarm[1] = room_change_time;
			}
		}
	}
}
alarm[2] =  encounter_rate;



