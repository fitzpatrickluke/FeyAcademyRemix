///@description set_battle_buff_heal
///@arg heal
///@arg student_num
///@arg enmy
function set_battle_buff_heal(argument0, argument1, argument2)
{
	var num = argument1;
	if(num == 3)
	{
		return heal;
	}
	else
	{
	var heal = argument0;
	
	var check1 = false;
	var check2 = false;
	
	if(manager_items.equip_list[# manager_battle_remix.unitEquip[num], 1] == equip.buff_heal)
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
		if(manager_items.equip_list[# manager_battle_remix.unitEquip[num2], 1] == equip.buff_heal)
		{
			if(manager_items.equip_list[# manager_battle_remix.unitEquip[num2], 2] == 1)
				check1 = true;
			else if(manager_items.equip_list[# manager_battle_remix.unitEquip[num2], 2] == 2)
				check2 = true;
		}
	}
	
		
	if(manager_items.equip_list[# manager_battle_remix.unitEquip[num], 1] == equip.ultimate_heal
	|| manager_items.equip_list[# manager_battle_remix.unitEquip[num2], 1] == equip.ultimate_heal)
	{
		heal = manager_battle_remix.unitHp[argument2];
	}
	
	if(manager_items.equip_list[# manager_battle_remix.unitEquip[num], 1] == equip.ultimate_heal_spd
	|| manager_items.equip_list[# manager_battle_remix.unitEquip[num2], 1] == equip.ultimate_heal_spd)
	{
		heal *= 1.5;
	}
	if(manager_items.equip_list[# manager_battle_remix.unitEquip[num], 1] == equip.ultimate_heal_mag
	|| manager_items.equip_list[# manager_battle_remix.unitEquip[num2], 1] == equip.ultimate_heal_mag)
	{
		heal *= 1.5;
	}
	
	if(check1)
		heal *= 1.5;
	else if(check2)
		heal *= 2;
	
	
	return heal;
	}
}