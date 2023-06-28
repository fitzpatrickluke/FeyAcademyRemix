///@description set_menu_title
///@arg menu_num
function set_menu_title(argument0)
{
	switch(argument0)
	{
		case menus.main: 
		obj_menu_selection_main.menu_on = true;
		obj_menu_title.txt_curr = "Main"; 
		obj_menu_profile_switch_left.menu_on = false;
		obj_menu_profile_switch_right.menu_on = false;
		obj_menu_profile_name.menu_on = false;
		obj_menu_profile_level.menu_on = false;
		obj_menu_profile_stat_mag.menu_on = false;
		obj_menu_profile_stat_def.menu_on = false;
		obj_menu_profile_stat_skl.menu_on = false;
		obj_menu_profile_stat_spd.menu_on = false;
		obj_menu_profile_hp.menu_on = false;
		obj_menu_profile_exp.menu_on = false;
		obj_menu_portrait.menu_on = false;
		obj_menu_spell.menu_on = false;
		obj_menu_spell_desc.menu_on = false;
		obj_menu_custom_grade.menu_on = false;
		obj_menu_custom_points.menu_on = false;
		obj_menu_wings_tree.menu_on = false;
		obj_menu_wings_name.menu_on = false;
		obj_menu_wings_grade.menu_on = false;
		obj_menu_wings_desc.menu_on = false;
		obj_menu_wings_tree_select.menu_on = false;
		obj_menu_wings_upgrade.menu_on = false;
		obj_menu_custom_switch_left.menu_on = false;
		obj_menu_custom_switch_right.menu_on = false;
		obj_menu_custom_name.menu_on = false;
		obj_menu_profile_wings.menu_on = false;
		obj_menu_codex_switch_left.menu_on = false;
		obj_menu_codex_switch_right.menu_on = false;
		obj_menu_codex_box.menu_on = false;
		obj_menu_save.menu_on = false;
		obj_menu_heal_port.menu_on = false;
		obj_menu_heal_spell.menu_on = false;
		obj_menu_profile_mp.menu_on = false;
		if(instance_exists(obj_menu_item))
			obj_menu_item.menu_on = false;
		obj_menu_item_desc.menu_on = false;
		obj_menu_item_use.menu_on = false;
		obj_menu_bag.menu_on = false;
		obj_menu_equip_port.menu_on = false;
		if(instance_exists(obj_menu_equip))
		{
			obj_menu_equip.menu_on = false;
			obj_menu_equip.choose_on = false;
		}
		obj_menu_equip_use.menu_on = false;
		obj_menu_equip_port.select_on_1 = false;
		obj_menu_equip_port.select_on_2 = false;
		obj_menu_equip_use.item_num = 0;
		obj_menu_bag_switch_left.menu_on = false;
		obj_menu_bag_switch_right.menu_on = false;
		obj_menu_equip_switch_left.menu_on = false;
		obj_menu_equip_switch_right.menu_on = false;
		obj_menu_equip_desc.menu_on = false;
		break;
		
		case menus.profile1: 
		obj_menu_selection_main.menu_on = false;
		obj_menu_title.txt_curr = "Profiles";  
		obj_menu_profile_switch_left.menu_on = true;
		obj_menu_profile_switch_right.menu_on = true;
		obj_menu_profile_name.menu_on = true;
		obj_menu_profile_level.menu_on = true;
		obj_menu_profile_stat_mag.menu_on = true;
		obj_menu_profile_stat_def.menu_on = true;
		obj_menu_profile_stat_skl.menu_on = true;
		obj_menu_profile_stat_spd.menu_on = true;
		obj_menu_profile_hp.menu_on = true;
		obj_menu_profile_exp.menu_on = true;
		obj_menu_portrait.menu_on = true;
		obj_menu_spell.menu_on = true;
		obj_menu_spell.alarm[0] = 1;
		obj_menu_spell_desc.menu_on = false;
		obj_menu_profile_wings.menu_on = true;
		obj_menu_profile_mp.menu_on = true;
		set_menu_profile_student(menus.profile1); 
		break;
		case menus.profile2: 
		obj_menu_selection_main.menu_on = false;
		obj_menu_title.txt_curr = "Profiles"; 
		obj_menu_profile_switch_left.menu_on = true;
		obj_menu_profile_switch_right.menu_on = true;
		obj_menu_profile_name.menu_on = true;
		obj_menu_profile_level.menu_on = true;
		obj_menu_profile_stat_mag.menu_on = true;
		obj_menu_profile_stat_def.menu_on = true;
		obj_menu_profile_stat_skl.menu_on = true;
		obj_menu_profile_stat_spd.menu_on = true;
		obj_menu_profile_hp.menu_on = true;
		obj_menu_profile_exp.menu_on = true;
		obj_menu_portrait.menu_on = true;
		obj_menu_spell.menu_on = true;
		obj_menu_spell.alarm[0] = 1;
		obj_menu_spell_desc.menu_on = false;
		obj_menu_profile_wings.menu_on = true;
		obj_menu_profile_mp.menu_on = true;
		set_menu_profile_student(menus.profile2); 
		break;
		case menus.profile3: 
		obj_menu_selection_main.menu_on = false;
		obj_menu_title.txt_curr = "Profiles";
		obj_menu_profile_switch_left.menu_on = true;
		obj_menu_profile_switch_right.menu_on = true;
		obj_menu_profile_name.menu_on = true;
		obj_menu_profile_level.menu_on = true;
		obj_menu_profile_stat_mag.menu_on = true;
		obj_menu_profile_stat_def.menu_on = true;
		obj_menu_profile_stat_skl.menu_on = true;
		obj_menu_profile_stat_spd.menu_on = true;
		obj_menu_profile_hp.menu_on = true;
		obj_menu_profile_exp.menu_on = true;
		obj_menu_portrait.menu_on = true;
		obj_menu_spell.menu_on = true;
		obj_menu_spell.alarm[0] = 1;
		obj_menu_spell_desc.menu_on = false;
		obj_menu_profile_wings.menu_on = true;
		obj_menu_profile_mp.menu_on = true;
		set_menu_profile_student(menus.profile3); 
		break;
		
		case menus.customize1: 
		obj_menu_selection_main.menu_on = false;
		obj_menu_title.txt_curr = "Custom";
		obj_menu_custom_switch_left.menu_on = true;
		obj_menu_custom_switch_right.menu_on = true;
		obj_menu_custom_name.menu_on = true;
		obj_menu_custom_grade.menu_on = true;
		obj_menu_custom_points.menu_on = true;
		obj_menu_wings_tree.menu_on = true;
		obj_menu_wings_name.menu_on = true;
		obj_menu_wings_grade.menu_on = true;
		obj_menu_wings_desc.menu_on = true;
		obj_menu_wings_tree_select.menu_on = true;
		obj_menu_wings_upgrade.menu_on = true;
		set_menu_custom(menus.customize1,obj_menu_custom_grade.points_num);
		set_wings_desc(manager_students.student_1_wings);
		break;
		case menus.customize2:
		obj_menu_selection_main.menu_on = false;
		obj_menu_title.txt_curr = "Custom";
		obj_menu_custom_grade.menu_on = true;
		obj_menu_custom_points.menu_on = true;
		obj_menu_custom_switch_left.menu_on = true;
		obj_menu_custom_switch_right.menu_on = true;
		obj_menu_custom_name.menu_on = true;
		obj_menu_wings_tree.menu_on = true;
		obj_menu_wings_name.menu_on = true;
		obj_menu_wings_grade.menu_on = true;
		obj_menu_wings_desc.menu_on = true;
		obj_menu_wings_tree_select.menu_on = true;
		obj_menu_wings_upgrade.menu_on = true;
		set_menu_custom(menus.customize2,obj_menu_custom_grade.points_num);
		set_wings_desc(manager_students.student_2_wings);
		break;
		case menus.customize3:
		obj_menu_selection_main.menu_on = false;
		obj_menu_title.txt_curr = "Custom";
		obj_menu_custom_grade.menu_on = true;
		obj_menu_custom_points.menu_on = true;
		obj_menu_custom_switch_left.menu_on = true;
		obj_menu_custom_switch_right.menu_on = true;
		obj_menu_custom_name.menu_on = true;
		obj_menu_wings_tree.menu_on = true;
		obj_menu_wings_name.menu_on = true;
		obj_menu_wings_grade.menu_on = true;
		obj_menu_wings_desc.menu_on = true;
		obj_menu_wings_tree_select.menu_on = true;
		obj_menu_wings_upgrade.menu_on = true;
		set_menu_custom(menus.customize3,obj_menu_custom_grade.points_num);
		set_wings_desc(manager_students.student_3_wings);
		break;

		case menus.codex1: 
		obj_menu_selection_main.menu_on = false;
		obj_menu_title.txt_curr = "Codex";
		obj_menu_codex_switch_left.menu_on = true;
		obj_menu_codex_switch_right.menu_on = true;
		obj_menu_codex_box.alarm[1] = 1;
		set_menu_codex_box(menus.codex1);
		break;
		case menus.codex2: 
		obj_menu_selection_main.menu_on = false;
		obj_menu_title.txt_curr = "Codex"; 
		obj_menu_codex_switch_left.menu_on = true;
		obj_menu_codex_switch_right.menu_on = true;
		obj_menu_codex_box.menu_on = true;
		set_menu_codex_box(menus.codex2);
		break;
		case menus.codex3: 
		obj_menu_selection_main.menu_on = false;
		obj_menu_title.txt_curr = "Codex";
		obj_menu_codex_switch_left.menu_on = true;
		obj_menu_codex_switch_right.menu_on = true;
		obj_menu_codex_box.menu_on = true;
		set_menu_codex_box(menus.codex3);
		break;
		case menus.codex4: 
		obj_menu_selection_main.menu_on = false;
		obj_menu_title.txt_curr = "Codex"; 
		obj_menu_codex_switch_left.menu_on = true;
		obj_menu_codex_switch_right.menu_on = true;
		obj_menu_codex_box.menu_on = true;
		set_menu_codex_box(menus.codex4);
		break;
		case menus.codex5: 
		obj_menu_selection_main.menu_on = false;
		obj_menu_title.txt_curr = "Codex"; 
		obj_menu_codex_switch_left.menu_on = true;
		obj_menu_codex_switch_right.menu_on = true;
		obj_menu_codex_box.menu_on = true;
		set_menu_codex_box(menus.codex5);
		break;
		case menus.codex6:
		obj_menu_selection_main.menu_on = false;
		obj_menu_title.txt_curr = "Codex"; 
		obj_menu_codex_switch_left.menu_on = true;
		obj_menu_codex_switch_right.menu_on = true;
		obj_menu_codex_box.menu_on = true;
		set_menu_codex_box(menus.codex6);
		break;
		
		
		case menus.save: 
		obj_menu_selection_main.menu_on = false;
		obj_menu_title.txt_curr = "Save"; 
		obj_menu_save.alarm[0] = 1;
		break;

		case menus.heal: 
		obj_menu_selection_main.menu_on = false;
		obj_menu_title.txt_curr = "Heal"; 
		obj_menu_heal_port.menu_on = true;
		obj_menu_heal_spell.menu_on = true;
		break;
		
		case menus.items: 
		obj_menu_selection_main.menu_on = false;
		obj_menu_title.txt_curr = "Items"; 
		if(instance_exists(obj_menu_item))
		{
			obj_menu_item.menu_on = true;
			obj_menu_item.alarm[0] = 1;
		}
		break;
		
		case menus.bag: 
		obj_menu_selection_main.menu_on = false;
		obj_menu_title.txt_curr = "Bag"; 
		obj_menu_bag.menu_on = true;
		obj_menu_bag_switch_left.menu_on = true;
		obj_menu_bag_switch_right.menu_on = true;
		break;
		
		case menus.equip: 
		obj_menu_selection_main.menu_on = false;
		obj_menu_title.txt_curr = "Equip"; 
		obj_menu_equip_port.menu_on = true;
		if(instance_exists(obj_menu_equip))
			obj_menu_equip.menu_on = true;
		obj_menu_equip_port.select_on_1 = false;
		obj_menu_equip_port.select_on_2 = false;
		obj_menu_equip_switch_left.menu_on = true;
		obj_menu_equip_switch_right.menu_on = true;
		obj_menu_equip_desc.menu_on = false;
		break;
	}
}