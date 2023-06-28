///@description set_menu_spell
///@arg id
///@arg spell_num
///@arg menu_curr
function set_menu_spell(argument0,argument1,argument2)
{
	var spl = argument1;
	var num = 0;
	var check = false;
	switch(argument2)
	{
		case menus.profile1:
		num = manager_students.master_student_1.spells_master[spl];
		if(manager_students.master_student_1.spells_level[spl] == 0)
			check = true;
		break;
		case menus.profile2:
		num = manager_students.master_student_2.spells_master[spl];
		if(manager_students.master_student_2.spells_level[spl] == 0)
			check = true;
		break;
		case menus.profile3:
		num = manager_students.master_student_3.spells_master[spl];
		if(manager_students.master_student_3.spells_level[spl] == 0)
			check = true;
		break;
		
	}
	
	if(check)
	{
		id.spell_on = false;
		id.spr_num = 1;
	}
	
	id.spell_num = spl;
	id.spell = num;
	id.txt_curr = manager_spells.player_spells[# num, 0];
}