///@description save_game_new
///@arg file
function save_game_new(argument0)
{
	var file = argument0;
	ini_open(file);
	
	ini_write_real("manager","save",true);
	ini_write_real("manager","NGP",manager_students.new_game_plus);
	
	#region // manager students
	ini_write_real("manager","master_students_1",manager_students.master_student_1);
	ini_write_real("manager","master_students_2",manager_students.master_student_2);
	ini_write_real("manager","master_students_3",manager_students.master_student_3);

	ini_write_real("manager","spr_body_num",manager_students.spr_body_num);
	ini_write_real("manager","spr_hair_num",manager_students.spr_hair_num);
	ini_write_real("manager","spr_bang_num",manager_students.spr_bang_num);
	ini_write_real("manager","spr_hair_col_num",manager_students.spr_hair_col_num);
	ini_write_real("manager","spr_eye_num",manager_students.spr_eye_num);
	ini_write_real("manager","spr_top_num",manager_students.spr_top_num);
	ini_write_real("manager","spr_top_col_num",manager_students.spr_top_col_num);
	ini_write_real("manager","spr_bot_num",manager_students.spr_bot_num);
	ini_write_real("manager","spr_bot_col_num",manager_students.spr_bot_col_num);
	ini_write_real("manager","spr_shoe_num",manager_students.spr_shoe_num);
	ini_write_real("manager","spr_show_col_num",manager_students.spr_shoe_col_num);
	ini_write_real("manager","spr_acc_num",manager_students.spr_acc_num);
	ini_write_real("manager","spr_acc_col_num",manager_students.spr_acc_col_num);
	
	ini_write_real("manager","player_element",manager_students.player_element);
	
	for(var i = 0; i < 5; i++)
	{
		ini_write_real("manager","class_points_1_"+string(i),manager_students.class_points_1[i]);
		ini_write_real("manager","class_points_2_"+string(i),manager_students.class_points_2[i]);
		ini_write_real("manager","class_points_3_"+string(i),manager_students.class_points_3[i]);
	}
	
	ini_write_real("manager","student_1_wings",manager_students.student_1_wings);
	ini_write_real("manager","student_2_wings",manager_students.student_2_wings);
	ini_write_real("manager","student_3_wings",manager_students.student_3_wings);
	
	ini_write_real("manager","stratum_curr",manager_students.stratum_curr);
	
	for(var i = 0; i < 11; i++)
		ini_write_real("manager","bosses_"+string(i),manager_students.bosses[i]);
	ini_write_real("manager","boss_battle",manager_students.boss_battle);
	
	ini_write_real("manager","curr_phase",manager_students.curr_phase);
	ini_write_real("manager","final_aa",manager_students.final_aa);
	ini_write_real("manager","final_er",manager_students.final_er);
	
	for(var i = 0; i < 3; i++)
	{
		ini_write_real("manager","player_gender_"+string(i),manager_students.player_gender[i]);
		ini_write_real("manager","player_custom_"+string(i),manager_students.player_custom[i]);
		ini_write_real("manager","player_weapon_"+string(i),manager_students.player_weapon[i]);
	}
	
	ini_write_real("manager","student_1_equip_1",manager_students.student_1_equip_1);
	ini_write_real("manager","student_2_equip_1",manager_students.student_2_equip_1);
	ini_write_real("manager","student_3_equip_1",manager_students.student_3_equip_1);
	ini_write_real("manager","student_1_equip_2",manager_students.student_1_equip_2);
	ini_write_real("manager","student_2_equip_2",manager_students.student_2_equip_2);
	ini_write_real("manager","student_3_equip_2",manager_students.student_3_equip_2);
	
	// items lists
	ini_write_real("manager","battle_items_size",ds_list_size(manager_students.battle_items));
	ini_write_real("manager","drop_items_size",ds_list_size(manager_students.drop_items));
	ini_write_real("manager","equip_items_size",ds_list_size(manager_students.equip_items));
	for(var i = 0; i < ds_list_size(manager_students.battle_items); i+=1)
	{
		ini_write_real("manager","battle_items_"+string(i),manager_students.battle_items[| i]);
	}
	for(var i = 0; i < ds_list_size(manager_students.drop_items); i+=1)
	{
		ini_write_real("manager","drop_items_"+string(i),manager_students.drop_items[| i]);
	}
	for(var i = 0; i < ds_list_size(manager_students.equip_items); i+=1)
	{
		ini_write_real("manager","equip_items_"+string(i),manager_students.equip_items[| i]);
	}
	
	#endregion
	
	#region // student 1
	ini_write_string("student_1","winx",manager_students.master_student_1.winx);
	
	ini_write_string("student_1","student_name",manager_students.master_student_1.student_name);
	ini_write_string("student_1","transformation",manager_students.master_student_1.transformation);
	ini_write_real("student_1","level",manager_students.master_student_1.level);
	
	ini_write_string("student_1","power_name",manager_students.master_student_1.power_name);
	ini_write_string("student_1","power_element",manager_students.master_student_1.power_element);
	
	for(var i = 0; i < 12; i++)
	{
		ini_write_real("student_1","spells_master_"+string(i),manager_students.master_student_1.spells_master[i]);
		ini_write_real("student_1","spells_level_"+string(i),manager_students.master_student_1.spells_level[i]);
	}
	
	ini_write_real("student_1","class_points",manager_students.master_student_1.class_points);
	
	ini_write_real("student_1","spr",manager_students.master_student_1.spr);
	ini_write_real("student_1","spr_attack",manager_students.master_student_1.spr_attack);
	ini_write_real("student_1","spr_heal",manager_students.master_student_1.spr_heal);
	ini_write_real("student_1","spr_battle",manager_students.master_student_1.spr_battle);
	
	ini_write_real("student_1","stat_magic",manager_students.master_student_1.stat_magic);
	ini_write_real("student_1","stat_defense",manager_students.master_student_1.stat_defense);
	ini_write_real("student_1","stat_speed",manager_students.master_student_1.stat_speed);
	ini_write_real("student_1","stat_skill",manager_students.master_student_1.stat_skill);
	
	ini_write_real("student_1","stat_hp",manager_students.master_student_1.stat_hp);
	ini_write_real("student_1","stat_hp_curr",manager_students.master_student_1.stat_hp_curr);
	
	ini_write_real("student_1","stat_mp",manager_students.master_student_1.stat_mp);
	ini_write_real("student_1","stat_mp_curr",manager_students.master_student_1.stat_mp_curr);
	
	ini_write_real("student_1","exp_curr",manager_students.master_student_1.exp_curr);
	ini_write_real("student_1","exp_next",manager_students.master_student_1.exp_next);
	
	ini_write_real("student_1","magic_increase",manager_students.master_student_1.magic_increase);
	ini_write_real("student_1","defense_increase",manager_students.master_student_1.defense_increase);
	ini_write_real("student_1","speed_increase",manager_students.master_student_1.speed_increase);
	ini_write_real("student_1","skill_increase",manager_students.master_student_1.skill_increase);
	#endregion
	
	#region // student 2
	ini_write_string("student_2","winx",manager_students.master_student_2.winx);
	
	ini_write_string("student_2","student_name",manager_students.master_student_2.student_name);
	ini_write_string("student_2","transformation",manager_students.master_student_2.transformation);
	ini_write_real("student_2","level",manager_students.master_student_2.level);
	
	ini_write_string("student_2","power_name",manager_students.master_student_2.power_name);
	ini_write_string("student_2","power_element",manager_students.master_student_2.power_element);
	
	ini_write_real("student_2","student_element",manager_students.master_student_2.student_element);
	ini_write_real("student_2","student_hair_num",manager_students.master_student_2.student_hair_num);
	ini_write_real("student_2","student_bang_num",manager_students.master_student_2.student_bang_num);
	ini_write_real("student_2","student_hair_col",manager_students.master_student_2.student_hair_col);
	
	for(var i = 0; i < 12; i++)
	{
		ini_write_real("student_2","spells_master_"+string(i),manager_students.master_student_2.spells_master[i]);
		ini_write_real("student_2","spells_level_"+string(i),manager_students.master_student_2.spells_level[i]);
	}
	
	ini_write_real("student_2","class_points",manager_students.master_student_2.class_points);
	
	ini_write_real("student_2","spr",manager_students.master_student_2.spr);
	ini_write_real("student_2","spr_attack",manager_students.master_student_2.spr_attack);
	ini_write_real("student_2","spr_heal",manager_students.master_student_2.spr_heal);
	ini_write_real("student_2","spr_battle",manager_students.master_student_2.spr_battle);
	ini_write_real("student_2","spr_reg",manager_students.master_student_2.spr_reg);
	ini_write_real("student_2","spr_wings",manager_students.master_student_2.spr_wings);
	
	ini_write_real("student_2","stat_magic",manager_students.master_student_2.stat_magic);
	ini_write_real("student_2","stat_defense",manager_students.master_student_2.stat_defense);
	ini_write_real("student_2","stat_speed",manager_students.master_student_2.stat_speed);
	ini_write_real("student_2","stat_skill",manager_students.master_student_2.stat_skill);
	
	ini_write_real("student_2","stat_hp",manager_students.master_student_2.stat_hp);
	ini_write_real("student_2","stat_hp_curr",manager_students.master_student_2.stat_hp_curr);
	
	ini_write_real("student_2","stat_mp",manager_students.master_student_2.stat_mp);
	ini_write_real("student_2","stat_mp_curr",manager_students.master_student_2.stat_mp_curr);
	
	ini_write_real("student_2","exp_curr",manager_students.master_student_2.exp_curr);
	ini_write_real("student_2","exp_next",manager_students.master_student_2.exp_next);
	
	ini_write_real("student_2","magic_increase",manager_students.master_student_2.magic_increase);
	ini_write_real("student_2","defense_increase",manager_students.master_student_2.defense_increase);
	ini_write_real("student_2","speed_increase",manager_students.master_student_2.speed_increase);
	ini_write_real("student_2","skill_increase",manager_students.master_student_2.skill_increase);
	#endregion
	
	#region // student 3
	ini_write_string("student_3","winx",manager_students.master_student_3.winx);
	
	ini_write_string("student_3","student_name",manager_students.master_student_3.student_name);
	ini_write_string("student_3","transformation",manager_students.master_student_3.transformation);
	ini_write_real("student_3","level",manager_students.master_student_3.level);
	
	ini_write_string("student_3","power_name",manager_students.master_student_3.power_name);
	ini_write_string("student_3","power_element",manager_students.master_student_3.power_element);
	
	ini_write_real("student_3","student_element",manager_students.master_student_3.student_element);
	ini_write_real("student_3","student_hair_num",manager_students.master_student_3.student_hair_num);
	ini_write_real("student_3","student_bang_num",manager_students.master_student_3.student_bang_num);
	ini_write_real("student_3","student_hair_col",manager_students.master_student_3.student_hair_col);
	
	for(var i = 0; i < 12; i++)
	{
		ini_write_real("student_3","spells_master_"+string(i),manager_students.master_student_3.spells_master[i]);
		ini_write_real("student_3","spells_level_"+string(i),manager_students.master_student_3.spells_level[i]);
	}
	
	ini_write_real("student_3","class_points",manager_students.master_student_3.class_points);
	
	ini_write_real("student_3","spr",manager_students.master_student_3.spr);
	ini_write_real("student_3","spr_attack",manager_students.master_student_3.spr_attack);
	ini_write_real("student_3","spr_heal",manager_students.master_student_3.spr_heal);
	ini_write_real("student_3","spr_battle",manager_students.master_student_3.spr_battle);
	ini_write_real("student_3","spr_reg",manager_students.master_student_3.spr_reg);
	ini_write_real("student_3","spr_wings",manager_students.master_student_3.spr_wings);
	
	ini_write_real("student_3","stat_magic",manager_students.master_student_3.stat_magic);
	ini_write_real("student_3","stat_defense",manager_students.master_student_3.stat_defense);
	ini_write_real("student_3","stat_speed",manager_students.master_student_3.stat_speed);
	ini_write_real("student_3","stat_skill",manager_students.master_student_3.stat_skill);
	
	ini_write_real("student_3","stat_hp",manager_students.master_student_3.stat_hp);
	ini_write_real("student_3","stat_hp_curr",manager_students.master_student_3.stat_hp_curr);
	
	ini_write_real("student_3","stat_mp",manager_students.master_student_3.stat_mp);
	ini_write_real("student_3","stat_mp_curr",manager_students.master_student_3.stat_mp_curr);
	
	ini_write_real("student_3","exp_curr",manager_students.master_student_3.exp_curr);
	ini_write_real("student_3","exp_next",manager_students.master_student_3.exp_next);
	
	ini_write_real("student_3","magic_increase",manager_students.master_student_3.magic_increase);
	ini_write_real("student_3","defense_increase",manager_students.master_student_3.defense_increase);
	ini_write_real("student_3","speed_increase",manager_students.master_student_3.speed_increase);
	ini_write_real("student_3","skill_increase",manager_students.master_student_3.skill_increase);
	#endregion
	
	#region // maps
	for(var i = 0; i < 10; i+=1)
	{
		for(var j = 0; j < 10; j+=1)
		{
			ini_write_real("maps","ff_f1_"+string(i)+string(j),manager_maps.pmaps_ff_f1[# i, j]);
			ini_write_real("maps","ff_f2_"+string(i)+string(j),manager_maps.pmaps_ff_f2[# i, j]);
			ini_write_real("maps","ff_f3_"+string(i)+string(j),manager_maps.pmaps_ff_f3[# i, j]);
			ini_write_real("maps","ff_f4_"+string(i)+string(j),manager_maps.pmaps_ff_f4[# i, j]);
		}
	}
	for(var i = 0; i < 16; i+=1)
	{
		for(var j = 0; j < 16; j+=1)
		{
			ini_write_real("maps","ww_f1_"+string(i)+string(j),manager_maps.pmaps_ww_f1[# i, j]);
			ini_write_real("maps","ww_f2_"+string(i)+string(j),manager_maps.pmaps_ww_f2[# i, j]);
			ini_write_real("maps","ww_f3_"+string(i)+string(j),manager_maps.pmaps_ww_f3[# i, j]);
			ini_write_real("maps","ww_f4_"+string(i)+string(j),manager_maps.pmaps_ww_f4[# i, j]);
			ini_write_real("maps","af_f1_"+string(i)+string(j),manager_maps.pmaps_af_f1[# i, j]);
			ini_write_real("maps","af_f2_"+string(i)+string(j),manager_maps.pmaps_af_f2[# i, j]);
			ini_write_real("maps","af_f3_"+string(i)+string(j),manager_maps.pmaps_af_f3[# i, j]);
			ini_write_real("maps","af_f4_"+string(i)+string(j),manager_maps.pmaps_af_f4[# i, j]);
			ini_write_real("maps","sp_f1_"+string(i)+string(j),manager_maps.pmaps_sp_f1[# i, j]);
			ini_write_real("maps","sp_f2_"+string(i)+string(j),manager_maps.pmaps_sp_f2[# i, j]);
			ini_write_real("maps","sp_f3_"+string(i)+string(j),manager_maps.pmaps_sp_f3[# i, j]);
			ini_write_real("maps","sp_f4_"+string(i)+string(j),manager_maps.pmaps_sp_f4[# i, j]);
			ini_write_real("maps","ss_f1_"+string(i)+string(j),manager_maps.pmaps_ss_f1[# i, j]);
			ini_write_real("maps","ss_f2_"+string(i)+string(j),manager_maps.pmaps_ss_f2[# i, j]);
			ini_write_real("maps","ss_f3_"+string(i)+string(j),manager_maps.pmaps_ss_f3[# i, j]);
			ini_write_real("maps","ss_f4_"+string(i)+string(j),manager_maps.pmaps_ss_f4[# i, j]);
			ini_write_real("maps","ft_f1_"+string(i)+string(j),manager_maps.pmaps_ft_f1[# i, j]);
			ini_write_real("maps","ft_f2_"+string(i)+string(j),manager_maps.pmaps_ft_f2[# i, j]);
			ini_write_real("maps","ft_f3_"+string(i)+string(j),manager_maps.pmaps_ft_f3[# i, j]);
			ini_write_real("maps","ft_f4_"+string(i)+string(j),manager_maps.pmaps_ft_f4[# i, j]);
		}
	}
	for(var i = 0; i < 25; i+=1)
	{
		for(var j = 0; j < 25; j+=1)
		{
			ini_write_real("maps","aa_f1_"+string(i)+string(j),manager_maps.pmaps_aa_f1[# i, j]);
			ini_write_real("maps","aa_f2_"+string(i)+string(j),manager_maps.pmaps_aa_f2[# i, j]);
			ini_write_real("maps","aa_f3_"+string(i)+string(j),manager_maps.pmaps_aa_f3[# i, j]);
			ini_write_real("maps","aa_f4_"+string(i)+string(j),manager_maps.pmaps_aa_f4[# i, j]);
			ini_write_real("maps","er_f1_"+string(i)+string(j),manager_maps.pmaps_er_f1[# i, j]);
			ini_write_real("maps","er_f2_"+string(i)+string(j),manager_maps.pmaps_er_f2[# i, j]);
			ini_write_real("maps","er_f3_"+string(i)+string(j),manager_maps.pmaps_er_f3[# i, j]);
			ini_write_real("maps","er_f4_"+string(i)+string(j),manager_maps.pmaps_er_f4[# i, j]);
		}
	}
	#endregion
	
	// codex
	for(var i = 0; i < 95; i+=1)
		ini_write_real("codex", "mon" + string(i),manager_enemy.codex_list[| i]);
	
	ini_close();
	
	show_debug_message("finished saving");
}