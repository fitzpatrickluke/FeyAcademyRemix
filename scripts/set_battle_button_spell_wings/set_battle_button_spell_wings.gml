///@description set_battle_button_spell_wings
///@arg id
///@arg spell_num
function set_battle_button_spell_wings(argument0,argument1){

	with(argument0)
	{
		var plyWings = 0;
		switch(manager_battle_remix.curr_battle_phase)
		{
			case battle_phase.chooseP1: plyWings = manager_students.student_1_wings; break;
			case battle_phase.chooseP2: plyWings = manager_students.student_2_wings; break;
			case battle_phase.chooseP3: plyWings = manager_students.student_3_wings; break;
		}
		
		spell_num = manager_spells.wing_spells[# plyWings, argument1];
		spell_wings = true;
		if(spell_num == -1)
			spell_off = true;
		else
			spell_off = false;
	}
}