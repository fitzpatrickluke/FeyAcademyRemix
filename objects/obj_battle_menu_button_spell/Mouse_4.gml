if(!menu_on)
	exit;
	
if(pause) exit;

manager_battle_remix.curr_unit_set_item = false;
manager_battle_remix.curr_unit_set_spell = true;
		
obj_battle_menu_spell.menu_on = true;
obj_battle_menu_button.menu_on = false;
obj_battle_portrait.menu_on = false;
obj_battle_menu_spell.alarm[1] = 1;