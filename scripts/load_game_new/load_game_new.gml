///@description load_game_new
///@arg file
function load_game_new(argument0)
{
	var file = argument0;
	ini_open(file);
		
	manager_students.new_game_plus = ini_read_real("manager","NGP",false);
	
	#region // manager students
	manager_students.master_student_1 = ini_read_real("manager","master_students_1",student_player);
	manager_students.master_student_2 = ini_read_real("manager","master_students_2",student_crystal);
	manager_students.master_student_3 = ini_read_real("manager","master_students_3",student_crystal);

	manager_students.spr_body_num = ini_read_real("manager","spr_body_num",0);
	manager_students.spr_hair_num = ini_read_real("manager","spr_hair_num",0);
	manager_students.spr_bang_num = ini_read_real("manager","spr_bang_num",0);
	manager_students.spr_hair_col_num = ini_read_real("manager","spr_hair_col_num",0);
	manager_students.spr_eye_num = ini_read_real("manager","spr_eye_num",0);
	manager_students.spr_top_num = ini_read_real("manager","spr_top_num",0);
	manager_students.spr_top_col_num = ini_read_real("manager","spr_top_col_num",0);
	manager_students.spr_bot_num = ini_read_real("manager","spr_bot_num",0);
	manager_students.spr_bot_col_num = ini_read_real("manager","spr_bot_col_num",0);
	manager_students.spr_shoe_num = ini_read_real("manager","spr_shoe_num",0);
	manager_students.spr_shoe_col_num = ini_read_real("manager","spr_show_col_num",0);
	manager_students.spr_acc_num = ini_read_real("manager","spr_acc_num",0);
	manager_students.spr_acc_col_num = ini_read_real("manager","spr_acc_col_num",0);
	
	manager_students.player_element = ini_read_real("manager","player_element",element.water);
	
	for(var i = 0; i < 5; i++)
	{
		manager_students.class_points_1[i] = ini_read_real("manager","class_points_1_"+string(i),0);
		manager_students.class_points_2[i] = ini_read_real("manager","class_points_2_"+string(i),0);
		manager_students.class_points_3[i] = ini_read_real("manager","class_points_3_"+string(i),0);
	}
	
	manager_students.student_1_wings = ini_read_real("manager","student_1_wings",wings.magix);
	manager_students.student_2_wings = ini_read_real("manager","student_2_wings",wings.magix);
	manager_students.student_3_wings = ini_read_real("manager","student_3_wings",wings.magix);
	
	manager_students.stratum_curr = ini_read_real("manager","stratum_curr",1);
	
	for(var i = 0; i < 11; i++)
		manager_students.bosses[i] = ini_read_real("manager","bosses_"+string(i),false);
	manager_students.boss_battle = ini_read_real("manager","boss_battle",false);
	
	manager_students.curr_phase = ini_read_real("manager","curr_phase",phase.phase_start);
	manager_students.final_aa = ini_read_real("manager","final_aa",false);
	manager_students.final_er = ini_read_real("manager","final_er",false);
	
	for(var i = 0; i < 3; i++)
	{
		manager_students.player_gender[i] = ini_read_real("manager","player_gender_"+string(i),0);
		manager_students.player_custom[i] = ini_read_real("manager","player_custom_"+string(i),0);
		manager_students.player_weapon[i] = ini_read_real("manager","player_weapon_"+string(i),0);
	}
	
	manager_students.student_1_equip_1 = ini_read_real("manager","student_1_equip_1",0);
	manager_students.student_2_equip_1 = ini_read_real("manager","student_2_equip_1",0);
	manager_students.student_3_equip_1 = ini_read_real("manager","student_3_equip_1",0);
	manager_students.student_1_equip_2 = ini_read_real("manager","student_1_equip_2",0);
	manager_students.student_2_equip_2 = ini_read_real("manager","student_2_equip_2",0);
	manager_students.student_3_equip_2 = ini_read_real("manager","student_3_equip_2",0);

	// items lists
	var b_i_s = ini_read_real("manager","battle_items_size",0);
	var d_i_s = ini_read_real("manager","drop_items_size",0);
	var e_i_s = ini_read_real("manager","equip_items_size",0);
	for(var i = 0; i < b_i_s; i+=1)
	{
		manager_students.battle_items[| i] = ini_read_real("manager","battle_items_"+string(i),0);
	}
	for(var i = 0; i < d_i_s; i+=1)
	{
		manager_students.drop_items[| i] = ini_read_real("manager","drop_items_"+string(i),0);
	}
	for(var i = 0; e_i_s; i+=1)
	{
		manager_students.equip_items[| i] = ini_read_real("manager","equip_items_"+string(i),0);
	}
	
	#endregion
	
	#region // student 1
	manager_students.master_student_1.student_name = ini_read_string("student_1","winx",false);
	
	manager_students.master_student_1.student_name = ini_read_string("student_1","student_name","Name");
	manager_students.master_student_1.transformation = ini_read_string("student_1","transformation","Magix");
	manager_students.master_student_1.level = ini_read_real("student_1","level",1);
	
	manager_students.master_student_1.power_name = ini_read_string("student_1","power_name","Power");
	manager_students.master_student_1.power_element = ini_read_string("student_1","power_element","Power");
	
	for(var i = 0; i < 12; i++)
	{
		manager_students.master_student_1.spells_master[i] = ini_read_real("student_1","spells_master_"+string(i),1);
		manager_students.master_student_1.spells_level[i] = ini_read_real("student_1","spells_level_"+string(i),1);
	}
	
	manager_students.master_student_1.class_points = ini_read_real("student_1","class_points",0);
	
	manager_students.master_student_1.spr = ini_read_real("student_1","spr",spr_empty);
	manager_students.master_student_1.spr_attack = ini_read_real("student_1","spr_attack",spr_student_attack_water);
	manager_students.master_student_1.spr_heal = ini_read_real("student_1","spr_heal",spr_student_heal_water);
	manager_students.master_student_1.spr_battle = ini_read_real("student_1","spr_battle",spr_fairy_crystal);
	
	manager_students.master_student_1.stat_magic = ini_read_real("student_1","stat_magic",1);
	manager_students.master_student_1.stat_defense = ini_read_real("student_1","stat_defense",1);
	manager_students.master_student_1.stat_speed = ini_read_real("student_1","stat_speed",1);
	manager_students.master_student_1.stat_skill = ini_read_real("student_1","stat_skill",1);
	
	manager_students.master_student_1.stat_hp = ini_read_real("student_1","stat_hp",10);
	manager_students.master_student_1.stat_hp_curr = ini_read_real("student_1","stat_hp_curr",10);
	
	manager_students.master_student_1.stat_hp = ini_read_real("student_1","stat_mp",12);
	manager_students.master_student_1.stat_hp_curr = ini_read_real("student_1","stat_mp_curr",12);
	
	manager_students.master_student_1.exp_curr = ini_read_real("student_1","exp_curr",0);
	manager_students.master_student_1.exp_next = ini_read_real("student_1","exp_next",10);
	
	manager_students.master_student_1.magic_increase = ini_read_real("student_1","magic_increase",1);
	manager_students.master_student_1.defense_increase = ini_read_real("student_1","defense_increase",1);
	manager_students.master_student_1.speed_increase = ini_read_real("student_1","speed_increase",1);
	manager_students.master_student_1.skill_increase = ini_read_real("student_1","skill_increase",1);
	#endregion
	
	#region // student 3
	manager_students.master_student_2.student_name = ini_read_string("student_2","winx",false);
	
	manager_students.master_student_2.student_name = ini_read_string("student_2","student_name","Name");
	manager_students.master_student_2.transformation = ini_read_string("student_2","transformation","Magix");
	manager_students.master_student_2.level = ini_read_real("student_2","level",1);
	
	manager_students.master_student_2.power_name = ini_read_string("student_2","power_name","Power");
	manager_students.master_student_2.power_element = ini_read_string("student_2","power_element","Power");
	
	manager_students.master_student_2.student_element = ini_read_real("student_2","student_element",element.water);
	manager_students.master_student_2.student_hair_num = ini_read_real("student_2","student_hair_num",0);
	manager_students.master_student_2.student_bang_num = ini_read_real("student_2","student_bang_num",0);
	manager_students.master_student_2.student_hair_col = ini_read_real("student_2","student_hair_col",0);
	
	for(var i = 0; i < 12; i++)
	{
		manager_students.master_student_2.spells_master[i] = ini_read_real("student_2","spells_master_"+string(i),1);
		manager_students.master_student_2.spells_level[i] = ini_read_real("student_2","spells_level_"+string(i),1);
	}
	
	manager_students.master_student_2.class_points = ini_read_real("student_2","class_points",0);
	
	manager_students.master_student_2.spr = ini_read_real("student_2","spr",spr_empty);
	manager_students.master_student_2.spr_attack = ini_read_real("student_2","spr_attack",spr_student_attack_water);
	manager_students.master_student_2.spr_heal = ini_read_real("student_2","spr_heal",spr_student_heal_water);
	manager_students.master_student_2.spr_battle = ini_read_real("student_2","spr_battle",spr_fairy_crystal);
	manager_students.master_student_2.spr_reg = ini_read_real("student_2","spr_reg",spr_crystal_walk_left);
	manager_students.master_student_2.spr_wings = ini_read_real("student_2","spr_wings",spr_fairy_crystal_wings);
	
	manager_students.master_student_2.stat_magic = ini_read_real("student_2","stat_magic",1);
	manager_students.master_student_2.stat_defense = ini_read_real("student_2","stat_defense",1);
	manager_students.master_student_2.stat_speed = ini_read_real("student_2","stat_speed",1);
	manager_students.master_student_2.stat_skill = ini_read_real("student_2","stat_skill",1);
	
	manager_students.master_student_2.stat_hp = ini_read_real("student_2","stat_hp",10);
	manager_students.master_student_2.stat_hp_curr = ini_read_real("student_2","stat_hp_curr",10);
	
	manager_students.master_student_2.stat_hp = ini_read_real("student_2","stat_mp",12);
	manager_students.master_student_2.stat_hp_curr = ini_read_real("student_2","stat_mp_curr",12);
	
	manager_students.master_student_2.exp_curr = ini_read_real("student_2","exp_curr",0);
	manager_students.master_student_2.exp_next = ini_read_real("student_2","exp_next",10);
	
	manager_students.master_student_2.magic_increase = ini_read_real("student_2","magic_increase",1);
	manager_students.master_student_2.defense_increase = ini_read_real("student_2","defense_increase",1);
	manager_students.master_student_2.speed_increase = ini_read_real("student_2","speed_increase",1);
	manager_students.master_student_2.skill_increase = ini_read_real("student_2","skill_increase",1);
	#endregion
	
	#region // student 3
	manager_students.master_student_3.student_name = ini_read_string("student_3","winx",false);
	
	manager_students.master_student_3.student_name = ini_read_string("student_3","student_name","Name");
	manager_students.master_student_3.transformation = ini_read_string("student_3","transformation","Magix");
	manager_students.master_student_3.level = ini_read_real("student_3","level",1);
	
	manager_students.master_student_3.power_name = ini_read_string("student_3","power_name","Power");
	manager_students.master_student_3.power_element = ini_read_string("student_3","power_element","Power");
	
	manager_students.master_student_3.student_element = ini_read_real("student_3","student_element",element.water);
	manager_students.master_student_3.student_hair_num = ini_read_real("student_3","student_hair_num",0);
	manager_students.master_student_3.student_bang_num = ini_read_real("student_3","student_bang_num",0);
	manager_students.master_student_3.student_hair_col = ini_read_real("student_3","student_hair_col",0);
	
	for(var i = 0; i < 12; i++)
	{
		manager_students.master_student_3.spells_master[i] = ini_read_real("student_3","spells_master_"+string(i),1);
		manager_students.master_student_3.spells_level[i] = ini_read_real("student_3","spells_level_"+string(i),1);
	}
	
	manager_students.master_student_3.class_points = ini_read_real("student_3","class_points",0);
	
	manager_students.master_student_3.spr = ini_read_real("student_3","spr",spr_empty);
	manager_students.master_student_3.spr_attack = ini_read_real("student_3","spr_attack",spr_student_attack_water);
	manager_students.master_student_3.spr_heal = ini_read_real("student_3","spr_heal",spr_student_heal_water);
	manager_students.master_student_3.spr_battle = ini_read_real("student_3","spr_battle",spr_fairy_crystal);
	manager_students.master_student_3.spr_reg = ini_read_real("student_3","spr_reg",spr_crystal_walk_left);
	manager_students.master_student_3.spr_wings = ini_read_real("student_3","spr_wings",spr_fairy_crystal_wings);
	
	manager_students.master_student_3.stat_magic = ini_read_real("student_3","stat_magic",1);
	manager_students.master_student_3.stat_defense = ini_read_real("student_3","stat_defense",1);
	manager_students.master_student_3.stat_speed = ini_read_real("student_3","stat_speed",1);
	manager_students.master_student_3.stat_skill = ini_read_real("student_3","stat_skill",1);
	
	manager_students.master_student_3.stat_hp = ini_read_real("student_3","stat_hp",10);
	manager_students.master_student_3.stat_hp_curr = ini_read_real("student_3","stat_hp_curr",10);
	
	manager_students.master_student_3.stat_hp = ini_read_real("student_3","stat_mp",12);
	manager_students.master_student_3.stat_hp_curr = ini_read_real("student_3","stat_mp_curr",12);
	
	manager_students.master_student_3.exp_curr = ini_read_real("student_3","exp_curr",0);
	manager_students.master_student_3.exp_next = ini_read_real("student_3","exp_next",10);
	
	manager_students.master_student_3.magic_increase = ini_read_real("student_3","magic_increase",1);
	manager_students.master_student_3.defense_increase = ini_read_real("student_3","defense_increase",1);
	manager_students.master_student_3.speed_increase = ini_read_real("student_3","speed_increase",1);
	manager_students.master_student_3.skill_increase = ini_read_real("student_3","skill_increase",1);
	#endregion
	
	#region // maps
	for(var i = 0; i < 10; i++)
	{
		for(var j = 0; j < 10; j++)
		{
			manager_maps.pmaps_ff_f1[# i, j] = ini_read_real("maps","ff_f1_"+string(i)+string(j),false);
			manager_maps.pmaps_ff_f2[# i, j] = ini_read_real("maps","ff_f2_"+string(i)+string(j),false);
			manager_maps.pmaps_ff_f3[# i, j] = ini_read_real("maps","ff_f3_"+string(i)+string(j),false);
			manager_maps.pmaps_ff_f4[# i, j] = ini_read_real("maps","ff_f4_"+string(i)+string(j),false);
		}
	}
	for(var i = 0; i < 16; i++)
	{
		for(var j = 0; j < 16; j++)
		{
			manager_maps.pmaps_ww_f1[# i, j] = ini_read_real("maps","ww_f1_"+string(i)+string(j),false);
			manager_maps.pmaps_ww_f2[# i, j] = ini_read_real("maps","ww_f2_"+string(i)+string(j),false);
			manager_maps.pmaps_ww_f3[# i, j] = ini_read_real("maps","ww_f3_"+string(i)+string(j),false);
			manager_maps.pmaps_ww_f4[# i, j] = ini_read_real("maps","ww_f4_"+string(i)+string(j),false);
			manager_maps.pmaps_af_f1[# i, j] = ini_read_real("maps","af_f1_"+string(i)+string(j),false);
			manager_maps.pmaps_af_f2[# i, j] = ini_read_real("maps","af_f2_"+string(i)+string(j),false);
			manager_maps.pmaps_af_f3[# i, j] = ini_read_real("maps","af_f3_"+string(i)+string(j),false);
			manager_maps.pmaps_af_f4[# i, j] = ini_read_real("maps","af_f4_"+string(i)+string(j),false);
			manager_maps.pmaps_sp_f1[# i, j] = ini_read_real("maps","sp_f1_"+string(i)+string(j),false);
			manager_maps.pmaps_sp_f2[# i, j] = ini_read_real("maps","sp_f2_"+string(i)+string(j),false);
			manager_maps.pmaps_sp_f3[# i, j] = ini_read_real("maps","sp_f3_"+string(i)+string(j),false);
			manager_maps.pmaps_sp_f4[# i, j] = ini_read_real("maps","sp_f4_"+string(i)+string(j),false);
			manager_maps.pmaps_ss_f1[# i, j] = ini_read_real("maps","ss_f1_"+string(i)+string(j),false);
			manager_maps.pmaps_ss_f2[# i, j] = ini_read_real("maps","ss_f2_"+string(i)+string(j),false);
			manager_maps.pmaps_ss_f3[# i, j] = ini_read_real("maps","ss_f3_"+string(i)+string(j),false);
			manager_maps.pmaps_ss_f4[# i, j] = ini_read_real("maps","ss_f4_"+string(i)+string(j),false);
			manager_maps.pmaps_ft_f1[# i, j] = ini_read_real("maps","ft_f1_"+string(i)+string(j),false);
			manager_maps.pmaps_ft_f2[# i, j] = ini_read_real("maps","ft_f2_"+string(i)+string(j),false);
			manager_maps.pmaps_ft_f3[# i, j] = ini_read_real("maps","ft_f3_"+string(i)+string(j),false);
			manager_maps.pmaps_ft_f4[# i, j] = ini_read_real("maps","ft_f4_"+string(i)+string(j),false);
		}
	}
	for(var i = 0; i < 25; i++)
	{
		for(var j = 0; j < 25; j++)
		{
			manager_maps.pmaps_aa_f1[# i, j] = ini_read_real("maps","aa_f1_"+string(i)+string(j),false);
			manager_maps.pmaps_aa_f2[# i, j] = ini_read_real("maps","aa_f2_"+string(i)+string(j),false);
			manager_maps.pmaps_aa_f3[# i, j] = ini_read_real("maps","aa_f3_"+string(i)+string(j),false);
			manager_maps.pmaps_aa_f4[# i, j] = ini_read_real("maps","aa_f4_"+string(i)+string(j),false);
			manager_maps.pmaps_er_f1[# i, j] = ini_read_real("maps","er_f1_"+string(i)+string(j),false);
			manager_maps.pmaps_er_f2[# i, j] = ini_read_real("maps","er_f2_"+string(i)+string(j),false);
			manager_maps.pmaps_er_f3[# i, j] = ini_read_real("maps","er_f3_"+string(i)+string(j),false);
			manager_maps.pmaps_er_f4[# i, j] = ini_read_real("maps","er_f4_"+string(i)+string(j),false);
		}
	}
	#endregion
	
	// codex
	for(var i = 0; i < 95; i+=1)
		manager_enemy.codex_list[| i] = ini_read_real("codex","mon" + string(i),false);
	
	ini_close();
	
	heal_hp();
	
	manager_students.explore_start_x = 80;
	manager_students.explore_start_y = 128;
	room = castle_bed;
}