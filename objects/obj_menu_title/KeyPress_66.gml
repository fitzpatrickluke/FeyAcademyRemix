switch(menu_curr)
{
	
	case menus.main: 
	room = manager_students.prev_room_adv; 
	break;
	case menus.profile1:
	case menus.profile2:
	case menus.profile3:
	case menus.spells1:
	case menus.spells2:
	case menus.spells3: 
	case menus.customize1:
	case menus.customize2: 
	case menus.customize3:
	menu_curr = menus.main;
	set_menu_title(menus.main);
	break;
	case menus.wings1:
	menu_curr = menus.customize1;
	set_menu_title(menus.customize1);
	break;
	case menus.wings2:
	menu_curr = menus.customize2;
	set_menu_title(menus.customize2);
	break;
	case menus.wings3:
	menu_curr = menus.customize3;
	set_menu_title(menus.customize3);
	break;
	case menus.codex1: 
	case menus.codex2: 
	case menus.codex3:
	case menus.codex4:
	case menus.codex5:
	case menus.codex6:
	if(obj_menu_codex_desc.menu_on)
	{
		obj_menu_codex_desc.menu_on = false;
		obj_menu_codex_box.menu_on = true;
		obj_menu_codex_switch_left.menu_on = true;
		obj_menu_codex_switch_right.menu_on = true;
	}
	else if(obj_menu_codex_box.menu_on)
	{
		menu_curr = menus.main;
		set_menu_title(menus.main);
	}
	break;
	case menus.save:
	if(obj_menu_save.click_on == false)
		break;
	else
	{
		menu_curr = menus.main;
		set_menu_title(menus.main);
	}
	break;
	case menus.items:
	if(healing_curr)
	{
		show_debug_message("NO MORE HEAL")
		obj_menu_item_use.menu_on = true;
		obj_menu_item_port.menu_on = false;
		healing_curr = false;
	}
	else
	{
		menu_curr = menus.main;
		set_menu_title(menus.main);
	}
	break;
	case menus.heal:
	if(healing_curr)
	{
		show_debug_message("NO MORE HEAL")
		obj_menu_heal_spell.menu_on = true;
		healing_curr = false;
	}
	else
	{
		menu_curr = menus.main;
		set_menu_title(menus.main);
	}
	break;
	case menus.bag:
	menu_curr = menus.main;
	set_menu_title(menus.main);
	break;
	
	case menus.equip:
	if(using_curr)
	{
		using_curr = false;
		obj_menu_equip_use.menu_on = false;
		obj_menu_equip_port.select_on_1 = false;
		obj_menu_equip_port.select_on_2 = false;
		obj_menu_equip_use.item_num = 0;
		obj_menu_equip_desc.menu_on = false;
	}
	else if(obj_menu_equip.choose_on)
	{
		obj_menu_equip.choose_on = false;
		obj_menu_equip_port.select_on_1 = false;
		obj_menu_equip_port.select_on_2 = false;
		obj_menu_equip_use.item_num = 0;
		obj_menu_equip_desc.menu_on = false;
	}
	else
	{
		menu_curr = menus.main;
		set_menu_title(menus.main);
	}
	break;
}