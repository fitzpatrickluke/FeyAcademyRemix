///@description set_menu_spell_heal
function set_menu_spell_heal()
{
	with(manager_menu)
	{
		var j1 = 0; var j2 = 0; var j3 = 0;
		for(var i = 0; i < 12; i+=1)
		{
			if(manager_spells.player_spells[# manager_students.master_student_1.spells_master[i],1] == spells.heal
			&& manager_students.master_student_1.spells_level[i] != 0)
			{
				spells_heal_1[j1] = manager_students.master_student_1.spells_master[i]; 
				spells_heal_txt_1[j1] = manager_spells.player_spells[# manager_students.master_student_1.spells_master[i],0];
				j1+=1;
			}
			if(manager_spells.player_spells[# manager_students.master_student_2.spells_master[i],1] == spells.heal
			&& manager_students.master_student_2.spells_level[i] != 0)
			{
				spells_heal_2[j2] = manager_students.master_student_1.spells_master[i]; 
				spells_heal_txt_2[j2] = manager_spells.player_spells[# manager_students.master_student_2.spells_master[i],0];
				j2+=1;
			}
			if(manager_spells.player_spells[# manager_students.master_student_3.spells_master[i],1] == spells.heal
			&& manager_students.master_student_3.spells_level[i] != 0)
			{
				spells_heal_3[j3] = manager_students.master_student_1.spells_master[i]; 
				spells_heal_txt_3[j3] = manager_spells.player_spells[# manager_students.master_student_3.spells_master[i],0];
				j3+=1;
			}
		}
	}
}