///@description set_battle_element_res
///@arg spell_type
///@arg defender_num
///@arg mult
function set_battle_element_res(argument0, argument1, argument2)
{
	var mult = argument2;
	var num = argument1;
	var es = argument0;
	var check1 = false;
	var check2 = false;
	
	// equipment 1
	switch(manager_items.equip_list[# manager_battle_remix.unitEquip[num], 1])
	{
		case equip.res_water:
		if(es == element.water)
		{
			if(manager_items.equip_list[# manager_battle_remix.unitEquip[num], 2] == 1)
				check1 = true;
			else if(manager_items.equip_list[# manager_battle_remix.unitEquip[num], 2] == 2)
				check2 = true;
		}
		break;
		
		case equip.res_earth:
		if(es == element.earth)
		{
			if(manager_items.equip_list[# manager_battle_remix.unitEquip[num], 2] == 1)
				check1 = true;
			else if(manager_items.equip_list[# manager_battle_remix.unitEquip[num], 2] == 2)
				check2 = true;
		}
		break;
		
		case equip.res_fire:
		if(es == element.fire)
		{
			if(manager_items.equip_list[# manager_battle_remix.unitEquip[num], 2] == 1)
				check1 = true;
			else if(manager_items.equip_list[# manager_battle_remix.unitEquip[num], 2] == 2)
				check2 = true;
		}
		break;
		
		case equip.res_air:
		if(es == element.air)
		{
			if(manager_items.equip_list[# manager_battle_remix.unitEquip[num], 2] == 1)
				check1 = true;
			else if(manager_items.equip_list[# manager_battle_remix.unitEquip[num], 2] == 2)
				check2 = true;
		}
		break;
		
		case equip.res_nature:
		if(es == element.nature)
		{
			if(manager_items.equip_list[# manager_battle_remix.unitEquip[num], 2] == 1)
				check1 = true;
			else if(manager_items.equip_list[# manager_battle_remix.unitEquip[num], 2] == 2)
				check2 = true;
		}
		break;
		
		case equip.res_magic:
		if(es == element.magic)
		{
			if(manager_items.equip_list[# manager_battle_remix.unitEquip[num], 2] == 1)
				check1 = true;
			else if(manager_items.equip_list[# manager_battle_remix.unitEquip[num], 2] == 2)
				check2 = true;
		}
		break;
		
		case equip.res_light:
		if(es == element.light)
		{
			if(manager_items.equip_list[# manager_battle_remix.unitEquip[num], 2] == 1)
				check1 = true;
			else if(manager_items.equip_list[# manager_battle_remix.unitEquip[num], 2] == 2)
				check2 = true;
		}
		break;
		
		case equip.res_dark:
		if(es == element.dark)
		{
			if(manager_items.equip_list[# manager_battle_remix.unitEquip[num], 2] == 1)
				check1 = true;
			else if(manager_items.equip_list[# manager_battle_remix.unitEquip[num], 2] == 2)
				check2 = true;
		}
		break;
	}
	
	// equipment 2
	// no double extra res, can only have/use 1
	var num2 = num + manager_battle_remix.unit_equip_aug
	if(manager_items.equip_list[# manager_battle_remix.unitEquip[num], 1] 
	!= manager_items.equip_list[# manager_battle_remix.unitEquip[num2], 1])
	{
		
		switch(manager_items.equip_list[# manager_battle_remix.unitEquip[num2], 1])
		{
			case equip.res_water:
			if(es == element.water)
			{
				if(manager_items.equip_list[# manager_battle_remix.unitEquip[num2], 2] == 1)
					check1 = true;
				else if(manager_items.equip_list[# manager_battle_remix.unitEquip[num2], 2] == 2)
					check2 = true;
			}
			break;
		
			case equip.res_earth:
			if(es == element.earth)
			{
				if(manager_items.equip_list[# manager_battle_remix.unitEquip[num2], 2] == 1)
					check1 = true;
				else if(manager_items.equip_list[# manager_battle_remix.unitEquip[num2], 2] == 2)
					check2 = true;
			}
			break;
		
			case equip.res_fire:
			if(es == element.fire)
			{
				if(manager_items.equip_list[# manager_battle_remix.unitEquip[num2], 2] == 1)
					check1 = true;
				else if(manager_items.equip_list[# manager_battle_remix.unitEquip[num2], 2] == 2)
					check2 = true;
			}
			break;
		
			case equip.res_air:
			if(es == element.air)
			{
				if(manager_items.equip_list[# manager_battle_remix.unitEquip[num2], 2] == 1)
					check1 = true;
				else if(manager_items.equip_list[# manager_battle_remix.unitEquip[num2], 2] == 2)
					check2 = true;
			}
			break;
		
			case equip.res_nature:
			if(es == element.nature)
			{
				if(manager_items.equip_list[# manager_battle_remix.unitEquip[num2], 2] == 1)
					check1 = true;
				else if(manager_items.equip_list[# manager_battle_remix.unitEquip[num2], 2] == 2)
					check2 = true;
			}
			break;
		
			case equip.res_magic:
			if(es == element.magic)
			{
				if(manager_items.equip_list[# manager_battle_remix.unitEquip[num2], 2] == 1)
					check1 = true;
				else if(manager_items.equip_list[# manager_battle_remix.unitEquip[num2], 2] == 2)
					check2 = true;
			}
			break;
		
			case equip.res_light:
			if(es == element.light)
			{
				if(manager_items.equip_list[# manager_battle_remix.unitEquip[num2], 2] == 1)
					check1 = true;
				else if(manager_items.equip_list[# manager_battle_remix.unitEquip[num2], 2] == 2)
					check2 = true;
			}
			break;
		
			case equip.res_dark:
			if(es == element.dark)
			{
				if(manager_items.equip_list[# manager_battle_remix.unitEquip[num2], 2] == 1)
					check1 = true;
				else if(manager_items.equip_list[# manager_battle_remix.unitEquip[num2], 2] == 2)
					check2 = true;
			}
			break;
		}
	
	}
	
	if(check1)
	{
		switch(mult)
		{
			case 4: mult = 2; break;
			case 2: mult = 1; break;
			case 1: mult = 0.8; break;
			case 0.8: mult = 0.5; break;
			case 0.5: mult = 0.2; break;
		}
	}
	else if(check2)
	{
		switch(mult)
		{
			case 4: mult = 1; break;
			case 2: mult = 0.8; break;
			case 1: mult = 0.5; break;
			case 0.8: mult = 0.2; break;
			case 0.5: mult = 0.05; break;
		}
	}
	
	
	return mult;
}