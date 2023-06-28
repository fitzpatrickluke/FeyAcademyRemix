///@description set_spell_check_mp
///@arg id
function set_spell_check_mp(argument0)
{
	var mp = 0;
	if(argument0.spell_wings)
	{
		mp = manager_spells.player_spells[# argument0.spell_num, 7]
	}
	else
	{
		mp = manager_spells.player_spells[# argument0.spellList[argument0.spell_num], 7]
	}
	
	if(obj_battle_feildElement.spr_field == fieldElement.eclipse)
		mp /= 2;
	
	switch(manager_battle_remix.curr_battle_phase)
	{
		case battle_phase.chooseP1:
		if(manager_battle_remix.unitMp_curr[0] < mp) argument0.no_mp_on = true;
		else argument0.no_mp_on = false;
		break;
		case battle_phase.chooseP2:
		if(manager_battle_remix.unitMp_curr[1] < mp) argument0.no_mp_on = true;
		else argument0.no_mp_on = false;
		break;
		case battle_phase.chooseP3:
		if(manager_battle_remix.unitMp_curr[2] < mp) argument0.no_mp_on = true;
		else argument0.no_mp_on = false;
		break;
	}
}