///@description check_equip_absorb
///@arg num
function check_equip_absorb(argument0)
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
		if(manager_items.equip_list[# manager_battle_remix.unitEquip[num], 1] == equip.ultimate_absorb
		|| manager_items.equip_list[# manager_battle_remix.unitEquip[num + 3], 1] == equip.ultimate_absorb)
			return true;
		else
			return false;
	}

		
}