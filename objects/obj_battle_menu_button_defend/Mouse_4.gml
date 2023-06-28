if(!menu_on)
	exit;
	
if(pause) exit;

manager_battle_remix.curr_unit_set_item = false;
manager_battle_remix.curr_unit_set_spell = false;

// choose spell and advance to next phase
switch(manager_battle_remix.curr_battle_phase)
{
	case battle_phase.chooseP1:
	// set defend
	manager_battle_remix.boolDefend[0] = true;
	
	if(manager_battle_remix.unitHp_curr[1] <= 0)
	{
		if(manager_battle_remix.unitHp_curr[2] <= 0)
		{
			manager_battle_remix.curr_battle_phase = battle_phase.setE;
			obj_battle_menu_spell.spellList = obj_battle_ply.spellList;
			obj_battle_menu_spell.spellListLevel = obj_battle_ply.spellListLevel;	

			obj_battle_menu_button.menu_on = false;
			obj_battle_portrait.menu_on = false;

			// set enemy spell
			set_battle_enemy_spell();
		}
		else
		{
			manager_battle_remix.curr_battle_phase = battle_phase.chooseP3;
			obj_battle_menu_spell.spellList = obj_battle_ply3.spellList;
			obj_battle_menu_spell.spellListLevel = obj_battle_ply3.spellListLevel;	
		}
	}
	else
	{
		manager_battle_remix.curr_battle_phase = battle_phase.chooseP2;
		obj_battle_menu_spell.spellList = obj_battle_ply2.spellList;
		obj_battle_menu_spell.spellListLevel = obj_battle_ply2.spellListLevel;
	}
	
	break;
	
	case battle_phase.chooseP2:
	// set defend
	manager_battle_remix.boolDefend[1] = true;
	
	if(manager_battle_remix.unitHp_curr[2] <= 0)
	{
		manager_battle_remix.curr_battle_phase = battle_phase.setE;
		obj_battle_menu_spell.spellList = obj_battle_ply.spellList;
		obj_battle_menu_spell.spellListLevel = obj_battle_ply.spellListLevel;	

		obj_battle_menu_button.menu_on = false;
		obj_battle_portrait.menu_on = false;

		// set enemy spell
		set_battle_enemy_spell();
	}
	else
	{
		manager_battle_remix.curr_battle_phase = battle_phase.chooseP3;
		obj_battle_menu_spell.spellList = obj_battle_ply3.spellList;
		obj_battle_menu_spell.spellListLevel = obj_battle_ply3.spellListLevel;	
	}
	
	break;
	
	case battle_phase.chooseP3:
	// set defend
	manager_battle_remix.boolDefend[2] = true;
	
	manager_battle_remix.curr_battle_phase = battle_phase.setE;
	obj_battle_menu_spell.spellList = obj_battle_ply.spellList;
	obj_battle_menu_spell.spellListLevel = obj_battle_ply.spellListLevel;	

	obj_battle_menu_button.menu_on = false;
	obj_battle_portrait.menu_on = false;
	
	
	// set enemy spell
	set_battle_enemy_spell();
	break;
}