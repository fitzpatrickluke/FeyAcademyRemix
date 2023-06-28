///@description set_menu_profile_student
///@arg menu_curr
function set_menu_profile_student(argument0)
{
	var s = manager_students.master_student_1;
	var w = manager_students.student_1_wings;
	switch(argument0)
	{
		case menus.profile1:
		s = manager_students.master_student_1;
		obj_menu_portrait.custom_char = manager_students.player_custom[0];
		w = manager_students.student_1_wings;
		break;
		case menus.profile2:
		s = manager_students.master_student_2;
		obj_menu_portrait.custom_char = manager_students.player_custom[1];
		w = manager_students.student_2_wings;
		break;
		case menus.profile3:
		s = manager_students.master_student_3;
		obj_menu_portrait.custom_char = manager_students.player_custom[2];
		w = manager_students.student_3_wings;
		break;
	}
	obj_menu_title.student_curr = s;
	obj_menu_profile_level.txt_curr = s.level;
	obj_menu_profile_name.txt_curr = s.student_name;
	obj_menu_profile_stat_mag.txt_curr = s.stat_magic;
	obj_menu_profile_stat_def.txt_curr = s.stat_defense;
	obj_menu_profile_stat_skl.txt_curr = s.stat_skill;
	obj_menu_profile_stat_spd.txt_curr = s.stat_speed;
	obj_menu_profile_hp.txt_curr_1 = s.stat_hp_curr;
	obj_menu_profile_hp.txt_curr_2 = s.stat_hp;
	obj_menu_profile_mp.txt_curr_1 = s.stat_mp_curr;
	obj_menu_profile_mp.txt_curr_2 = s.stat_mp;
	obj_menu_profile_exp.txt_curr_1 = s.exp_curr;
	obj_menu_profile_exp.txt_curr_2 = s.exp_next;
	obj_menu_portrait.spr_curr = s.spr;
	obj_menu_profile_wings.txt_curr = get_wings_name(w);
	
}