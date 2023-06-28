///@description check_equip_status_heal
///@arg num
function check_equip_status_heal(argument0)
{
	var enmy = argument0;
	
	// true: gets buff
	// false: no buff
	
	if(enmy == 3)
	{
		return false;
	}
	else
	{
		if(manager_items.equip_list[# manager_battle_remix.unitEquip[enmy], 1] == equip.ultimate_stat
		|| manager_items.equip_list[# manager_battle_remix.unitEquip[enmy + 3], 1] == equip.ultimate_stat)
			return true;
		else
			return false;
	}
}