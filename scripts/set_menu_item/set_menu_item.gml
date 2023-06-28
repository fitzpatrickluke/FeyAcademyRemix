///@description set_menu_item
///@arg id
///@arg num
function set_menu_item(argument0, argument1)
{
		if(argument1 >= ds_list_size(manager_students.battle_items))
			instance_destroy(argument0);
		else
		{
			var num = manager_students.battle_items[| argument1];
			argument0.item_num = num;
			argument0.txt_curr = manager_items.item_list[# num, 0];
			
			switch(manager_items.item_list[# num, 1])
			{
				case items.antidote:
				case items.pure:
				case items.chime:
				case items.orb:
				case items.void:
				case items.decr:
				if(room != battleRoomRemix)
					argument0.use_off = true;
				break;
				case items.medicine:
				if((manager_students.master_student_1.stat_hp_curr == manager_students.master_student_1.stat_hp
				|| manager_students.master_student_1.stat_hp_curr <= 0)
				&&
				(manager_students.master_student_2.stat_hp_curr == manager_students.master_student_2.stat_hp
				|| manager_students.master_student_2.stat_hp_curr <= 0)
				&&
				(manager_students.master_student_3.stat_hp_curr == manager_students.master_student_3.stat_hp
				|| manager_students.master_student_3.stat_hp_curr <= 0))
				{
					if(room != battleRoomRemix)
						argument0.use_off = true;
				}
				break;
				case items.nectar:
				if((manager_students.master_student_1.stat_mp_curr == manager_students.master_student_1.stat_mp)
				&&
				(manager_students.master_student_2.stat_mp_curr == manager_students.master_student_2.stat_mp)
				&&
				(manager_students.master_student_3.stat_mp_curr == manager_students.master_student_3.stat_mp))
				{
					if(room != battleRoomRemix)
						argument0.use_off = true;
				}
				break;
				case items.dust:
				if((manager_students.master_student_1.stat_hp_curr >= 0)
				&&
				(manager_students.master_student_2.stat_hp_curr >= 0)
				&&
				(manager_students.master_student_3.stat_hp_curr >= 0))
				{
					if(room != battleRoomRemix)
						argument0.use_off = true;
				}
				break;
			}
		
		}
		
		
}