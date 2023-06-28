///@description set_battle_button_spell
///@arg id
///@arg spell_num
function set_battle_button_spell(argument0,argument1){

	with(argument0)
	{
		spell_num = argument1;
		spell_wings = false;
		switch(manager_battle_remix.curr_battle_phase)
		{
			case battle_phase.chooseP1:
			if(manager_students.master_student_1.spells_level[spell_num] == 0) spell_off = true;
			break;
			case battle_phase.chooseP2:
			if(manager_students.master_student_2.spells_level[spell_num] == 0) spell_off = true;
			break;
			case battle_phase.chooseP3:
			if(manager_students.master_student_3.spells_level[spell_num] == 0) spell_off = true;
			break;
		}
	}
}