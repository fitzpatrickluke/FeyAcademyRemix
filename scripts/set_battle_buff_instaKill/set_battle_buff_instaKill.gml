///@description set_battle_buff_instaKill
///@arg chance
///@arg student_num
function set_battle_buff_instaKill(argument0, argument1)
{
	var chance = argument0;
	var num = argument1;
	
	var check1 = false;
	var check2 = false;
	
	if(manager_items.equip_list[# manager_battle_remix.unitEquip[num], 1] == equip.special_instaKill)
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
		if(manager_items.equip_list[# manager_battle_remix.unitEquip[num2], 1] == equip.special_instaKill)
		{
			if(manager_items.equip_list[# manager_battle_remix.unitEquip[num2], 2] == 1)
				check1 = true;
			else if(manager_items.equip_list[# manager_battle_remix.unitEquip[num2], 2] == 2)
				check2 = true;
		}
	}
	
	if(check1)
		chance *= 1.5;
	else if(check2)
		chance *= 2;
	
	return chance;
}