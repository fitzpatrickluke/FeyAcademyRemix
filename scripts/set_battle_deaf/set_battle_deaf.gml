///@description set_battle_deaf
///@arg num
function set_battle_deaf(argument0)
{
	var num = argument0;
	
	if(manager_battle_remix.boolDeaf[num] && manager_battle_remix.boolAttack[num])
	{
		// calculate
		var on = false;
		switch(manager_spells.player_spells[# manager_battle_remix.battleSpells[num], 1])
		{
			case spells.heal:
			case spells.sheild:
			case spells.reflect:
			case spells.heal_status:
			case spells.revive:
			case spells.mag_up:
			case spells.def_up:
			case spells.skl_up:
			case spells.spd_up:
			case spells.all_up:
			case spells.double_buff:
			case spells.steal_buff:
			case spells.mag_down:
			case spells.def_down:
			case spells.skl_down:
			case spells.spd_down:
			case spells.all_down:
			case spells.heal_party:
			case spells.heal_enemy:
			on = true;
			break;
		}
		
		// set
		if(on)
		{
			manager_battle_remix.boolAttack[num] = false;
			manager_battle_remix.boolDefend[num] = false;
			manager_battle_remix.boolSpecial[num] = false;
			manager_battle_remix.boolFlee[num] = false;
			
			manager_battle_remix.boolDeafOn[num] = true;
		}
		

	}
}