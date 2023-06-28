
txt_col = c_black;
scale = manager_students.master_scale;
spr = spr_battle_menu_spell;

mouse_on = false;

menu_on = false;

no_mp_on = false;

spellList = 0;
spellListLevel = 0;
spell_off = false;
switch(manager_battle_remix.curr_battle_phase)
{
	case battle_phase.chooseP1:
	spellList = manager_students.master_student_1.spells_master; break;
	if(manager_students.master_student_1.spells_level[spell_num] != 0) spell_off = true; break;
	if(manager_battle_remix.unitMp_curr[0] <= 0) no_mp_on = true; break;
	break;
	case battle_phase.chooseP2:
	spellList = manager_students.master_student_2.spells_master; break;
	if(manager_students.master_student_2.spells_level[spell_num] != 0) spell_off = true; break;
	if(manager_battle_remix.unitMp_curr[1] <= 0) no_mp_on = true; break;
	break;
	case battle_phase.chooseP3:
	spellList = manager_students.master_student_3.spells_master; break;
	if(manager_students.master_student_3.spells_level[spell_num] != 0) spell_off = true; break;
	if(manager_battle_remix.unitMp_curr[2] <= 0) no_mp_on = true; break;
	break;
}

spell_num = 0;
button_txt = "";

spell_wings = false;
spell_wings_num = 0;

