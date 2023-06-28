///@description set_battle_buff_shield
///@arg student_num
function set_battle_buff_shield(argument0)
{
	var num = argument0;
	
	if(num == 3)
	{
		return 1;
	}
	else
	{
	
	var check1 = false;
	var check2 = false;
	
	var shield = 1;
	
	if(manager_items.equip_list[# manager_battle_remix.unitEquip[num], 1] == equip.buff_shield)
	{
		if(manager_items.equip_list[# manager_battle_remix.unitEquip[num], 2] == 1)
			check1 = true;
		else if(manager_items.equip_list[# manager_battle_remix.unitEquip[num], 2] == 2)
			check2 = true;
	}
	
	var num2 = num + manager_battle_remix.unit_equip_aug;
	if(manager_items.equip_list[# manager_battle_remix.unitEquip[num], 1] 
	!= manager_items.equip_list[# manager_battle_remix.unitEquip[num2], 1])
	{
		if(manager_items.equip_list[# manager_battle_remix.unitEquip[num2], 1] == equip.buff_shield)
		{
			if(manager_items.equip_list[# manager_battle_remix.unitEquip[num2], 2] == 1)
				check1 = true;
			else if(manager_items.equip_list[# manager_battle_remix.unitEquip[num2], 2] == 2)
				check2 = true;
		}
	}
	
	if(check1)
		shield = 1.5;
	else if(check2)
		shield = 2;

	return shield;
	
	}
}