///@description check_equip_reflect
///@arg num
function check_equip_reflect(argument0)
{
	var num = argument0;
	
	// true: gets buff
	// false: no buff
	
	if(num == 3)
	{
		return false;
	}
	else
	{
		if(manager_items.equip_list[# manager_battle_remix.unitEquip[num], 1] == equip.ultimate_reflect
		|| manager_items.equip_list[# manager_battle_remix.unitEquip[num + 3], 1] == equip.ultimate_reflect)
			return true;
		else
			return false;
	}

		
}