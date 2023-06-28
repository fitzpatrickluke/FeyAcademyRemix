if(!menu_on)
	exit;
if(spell_off) exit;
if(no_mp_on) exit;
	
obj_battle_menu_button.pause = true;
obj_battle_menu_button.alarm[0] = 10;
	
var check1 = false;
var mySpl = 0;
if(spell_wings)
{
	check1 = manager_spells.player_spells[# spell_num, 6];
	mySpl = spell_num;
}
else
{
	check1 = manager_spells.player_spells[# spellList[spell_num], 6];
	mySpl = spellList[spell_num];
}
	
if(check1 == true)
{	
	switch(manager_battle_remix.curr_battle_phase)
	{
		case battle_phase.chooseP1:
		manager_battle_remix.boolAttack[0] = true;
		manager_battle_remix.battleSpells[0] = mySpl;break;
		case battle_phase.chooseP2:
		manager_battle_remix.boolAttack[1] = true
		manager_battle_remix.battleSpells[1] = mySpl; break;
		case battle_phase.chooseP3:
		manager_battle_remix.boolAttack[2] = true;
		manager_battle_remix.battleSpells[2] = mySpl;break;
	}
	obj_battle_menu_spell.menu_on = false;
	obj_battle_ply.choosingPlayer = true;
	
}
else
{

// choose spell and advance to next phase
switch(manager_battle_remix.curr_battle_phase)
{
	case battle_phase.chooseP1:
	// set spell
	manager_battle_remix.battleSpells[0] = mySpl;
	manager_battle_remix.boolAttack[0] = true;
	manager_battle_remix.unitTarget[0] = 3;
	
	if(manager_battle_remix.unitHp_curr[1] <= 0)
	{
		if(manager_battle_remix.unitHp_curr[2] <= 0)
		{
			manager_battle_remix.curr_battle_phase = battle_phase.setE;
			obj_battle_menu_spell.spellList = obj_battle_ply.spellList;
			obj_battle_menu_spell.spellListLevel = obj_battle_ply.spellListLevel;
	
			obj_battle_menu_spell.menu_on = false;
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
	
			obj_battle_menu_spell.menu_on = false;
			obj_battle_menu_button.menu_on = true;
			obj_battle_portrait.menu_on = true;
		}
	}
	else
	{
		manager_battle_remix.curr_battle_phase = battle_phase.chooseP2;
		obj_battle_menu_spell.spellList = obj_battle_ply2.spellList;
		obj_battle_menu_spell.spellListLevel = obj_battle_ply2.spellListLevel;
	
		obj_battle_menu_spell.menu_on = false;
		obj_battle_menu_button.menu_on = true;
		obj_battle_portrait.menu_on = true;
	}
	
	break;
	
	case battle_phase.chooseP2:
		// set spell
	manager_battle_remix.battleSpells[1] = mySpl;
	manager_battle_remix.boolAttack[1] = true;
	manager_battle_remix.unitTarget[1] = 3;
	
	if(manager_battle_remix.unitHp_curr[2] <= 0)
	{
		manager_battle_remix.curr_battle_phase = battle_phase.setE;
		obj_battle_menu_spell.spellList = obj_battle_ply.spellList;
		obj_battle_menu_spell.spellListLevel = obj_battle_ply.spellListLevel;
	
		obj_battle_menu_spell.menu_on = false;
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
	
		obj_battle_menu_spell.menu_on = false;
		obj_battle_menu_button.menu_on = true;
		obj_battle_portrait.menu_on = true;
	}
	
	break;
	
	case battle_phase.chooseP3:
		// set spell
	manager_battle_remix.battleSpells[2] = mySpl;
	manager_battle_remix.boolAttack[2] = true;
	manager_battle_remix.unitTarget[2] = 3;
	
	
	manager_battle_remix.curr_battle_phase = battle_phase.setE;
	obj_battle_menu_spell.spellList = obj_battle_ply.spellList;
	obj_battle_menu_spell.spellListLevel = obj_battle_ply.spellListLevel;
	
	obj_battle_menu_spell.menu_on = false;
	obj_battle_menu_button.menu_on = false;
	obj_battle_portrait.menu_on = false;
	
	// set enemy spell
	set_battle_enemy_spell();
	break;
}



}