///@description set_battle_endTurn
function set_battle_endTurn()
{
	if(manager_battle_remix.unitHp_curr[0] <= 0)
	{
		if(manager_battle_remix.unitHp_curr[1] <= 0)
		{
			obj_battle_menu_spell.spellList = obj_battle_ply3.spellList;
			obj_battle_menu_spell.spellListLevel = obj_battle_ply3.spellListLevel;
			manager_battle_remix.curr_battle_phase = battle_phase.chooseP3;
			obj_battle_menu_button.menu_on = true;
			obj_battle_portrait.menu_on = true;
		}
		else
		{
			obj_battle_menu_spell.spellList = obj_battle_ply2.spellList;
			obj_battle_menu_spell.spellListLevel = obj_battle_ply2.spellListLevel;
			manager_battle_remix.curr_battle_phase = battle_phase.chooseP2;
			obj_battle_menu_button.menu_on = true;
			obj_battle_portrait.menu_on = true;
		}
	}
	else
	{
		obj_battle_menu_spell.spellList = obj_battle_ply.spellList;
		obj_battle_menu_spell.spellListLevel = obj_battle_ply.spellListLevel;
		manager_battle_remix.curr_battle_phase = battle_phase.chooseP1;
		obj_battle_menu_button.menu_on = true;
		obj_battle_portrait.menu_on = true;
	}

	for(var i = 0; i < 4; i+=1)
	{
		manager_battle_remix.boolAttack[i] = false;
		manager_battle_remix.boolStrike[i] = false;
		manager_battle_remix.boolDefend[i] = false;
		manager_battle_remix.boolFlee[i] = false;
		manager_battle_remix.boolSpecial[i] = false;
		manager_battle_remix.battleSpells[i] = -1;
		manager_battle_remix.battleDamage[i] = 0;
		manager_battle_remix.boolPetrifyOn[i] = false;
		manager_battle_remix.boolBlindOn[i] = false;
		manager_battle_remix.boolDeafOn[i] = false;
		manager_battle_remix.boolShield[i] = false;
		manager_battle_remix.shieldStat[i] = 0;
		manager_battle_remix.boolInstaDeath[i] = false;
		manager_battle_remix.attack_strong[i] = false;
		manager_battle_remix.attack_weak[i] = false;
		manager_battle_remix.boolItem[i] = false;
		manager_battle_remix.boolItemUse[i] = -1;
		manager_battle_remix.boolItemBag[i] = -1;
	}
	manager_battle_remix.curr_unit_item_num = -1;
	
	if(instance_exists(obj_battle_menu_item))
		obj_battle_menu_item.alarm[2] = 1;
		
	if(manager_battle_remix.unitHp_curr[0] > 0)
		manager_battle_remix.boolSpecialTimer[0] += 1;
		
	if(manager_battle_remix.unitHp_curr[1] > 0)
		manager_battle_remix.boolSpecialTimer[1] += 1;
		
	if(manager_battle_remix.unitHp_curr[2] > 0)
		manager_battle_remix.boolSpecialTimer[2] += 1;

}