///@description check_status_immune
///@arg num
function check_status_immune(argument0)
{
	var enmy = argument0;
	
	// true: is affected
	// false: is not affected
	
	if(enmy == 3)
	{
		return true;
	}
	else
	{
		if(manager_items.equip_list[# manager_battle_remix.unitEquip[enmy], 1] == equip.ultimate_immune
		|| manager_items.equip_list[# manager_battle_remix.unitEquip[enmy + 3], 1] == equip.ultimate_immune)
			return false;
		else
			return true;
	}

		
}