///@description set_battle_status_res
///@arg status_check
///@arg student_num
///@arg spl_type

function set_battle_status_res(argument0, argument1, argument2)
{
	var num = argument1;
	var status_check = argument0;
	
	if(num == 3)
	{
		return status_check;
	}
	else
	{
		var check1 = false;
		var check2 = false;
		var spl_type = argument2;
		// equipment 1;
		switch(manager_items.equip_list[# manager_battle_remix.unitEquip[num], 1])
		{
			case equip.res_petrify:
			if(spl_type == spells.petrify)
			{
				if(manager_items.equip_list[# manager_battle_remix.unitEquip[num], 2] == 1)
					check1 = true;
				else if(manager_items.equip_list[# manager_battle_remix.unitEquip[num], 2] == 2)
					check2 = true;
			}
			break;
			
			case equip.res_curse:
			if(spl_type == spells.curse)
			{
				if(manager_items.equip_list[# manager_battle_remix.unitEquip[num], 2] == 1)
					check1 = true;
				else if(manager_items.equip_list[# manager_battle_remix.unitEquip[num], 2] == 2)
					check2 = true;
			}
			break;
			
			case equip.res_blind:
			if(spl_type == spells.blind)
			{
				if(manager_items.equip_list[# manager_battle_remix.unitEquip[num], 2] == 1)
					check1 = true;
				else if(manager_items.equip_list[# manager_battle_remix.unitEquip[num], 2] == 2)
					check2 = true;
			}
			break;
			
			case equip.res_deaf:
			if(spl_type == spells.deaf)
			{
				if(manager_items.equip_list[# manager_battle_remix.unitEquip[num], 2] == 1)
					check1 = true;
				else if(manager_items.equip_list[# manager_battle_remix.unitEquip[num], 2] == 2)
					check2 = true;
			}
			break;
		}
		
		// equipment 2;
		var num2 = num + manager_battle_remix.unit_equip_aug
		if(manager_items.equip_list[# manager_battle_remix.unitEquip[num], 1] 
		!= manager_items.equip_list[# manager_battle_remix.unitEquip[num2], 1])
		{
			
			switch(manager_items.equip_list[# manager_battle_remix.unitEquip[num2], 1])
			{
				case equip.res_petrify:
				if(spl_type == spells.petrify)
				{
					if(manager_items.equip_list[# manager_battle_remix.unitEquip[num2], 2] == 1)
						check1 = true;
					else if(manager_items.equip_list[# manager_battle_remix.unitEquip[num2], 2] == 2)
						check2 = true;
				}
				break;
			
				case equip.res_curse:
				if(spl_type == spells.curse)
				{
					if(manager_items.equip_list[# manager_battle_remix.unitEquip[num2], 2] == 1)
						check1 = true;
					else if(manager_items.equip_list[# manager_battle_remix.unitEquip[num2], 2] == 2)
						check2 = true;
				}
				break;
			
				case equip.res_blind:
				if(spl_type == spells.blind)
				{
					if(manager_items.equip_list[# manager_battle_remix.unitEquip[num2], 2] == 1)
						check1 = true;
					else if(manager_items.equip_list[# manager_battle_remix.unitEquip[num2], 2] == 2)
						check2 = true;
				}
				break;
			
				case equip.res_deaf:
				if(spl_type == spells.deaf)
				{
					if(manager_items.equip_list[# manager_battle_remix.unitEquip[num2], 2] == 1)
						check1 = true;
					else if(manager_items.equip_list[# manager_battle_remix.unitEquip[num2], 2] == 2)
						check2 = true;
				}
				break;
			}
		}
		
		var m = 1;
		if(check1)
			m = 0.5;
		if(check2)
			m = 0.2;
			
		return (status_check*m);
	}
}