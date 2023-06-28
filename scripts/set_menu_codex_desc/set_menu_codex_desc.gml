///@description set_menu_codex_desc
///@arg mon_num
function set_menu_codex_desc(argument0)
{
	var num = argument0;
	
	var t1 = "";
	switch(manager_enemy.enemy_list[# num, 11])
	{
		case element.water: t1 = "Water"; break;
		case element.earth: t1 = "Earth"; break;
		case element.fire: t1 = "Fire"; break;
		case element.air: t1 = "Air"; break;
		case element.nature: t1 = "Nature"; break;
		case element.magic: t1 = "Magic"; break;
		case element.light: t1 = "Light"; break;
		case element.dark: t1 = "Dark"; break;
	}
	var t2 = "";
	switch(manager_enemy.enemy_list[# num, 12])
	{
		case element.water: t2 = "Water"; break;
		case element.earth: t2 = "Earth"; break;
		case element.fire: t2 = "Fire"; break;
		case element.air: t2 = "Air"; break;
		case element.nature: t2 = "Nature"; break;
		case element.magic: t2 = "Magic"; break;
		case element.light: t2 = "Light"; break;
		case element.dark: t2 = "Dark"; break;
	}
	
	with(obj_menu_codex_desc)
	{
	txt_type_1 = t1;
	txt_type_2 = t2;
	txt_drop_1 = get_drop_name(manager_enemy.enemy_list[# num, 14]);
	txt_drop_2 = get_drop_name(manager_enemy.enemy_list[# num, 15]);
	txt_loc = manager_enemy.enemy_list[# num, 13];
	txt_des = string_wrap(manager_text.txt_enemy_des[|num],txt_des_w);
	txt_name = manager_enemy.enemy_list[# num, 0];
	spr_mon = manager_enemy.enemy_list[# num, 8];
	if(manager_enemy.codex_list[|num])
	{
		spr_col = c_white;
		mon_on = true;
	}
	else
	{
		mon_on = false;
		spr_col = c_black;
	}
	}
	
}