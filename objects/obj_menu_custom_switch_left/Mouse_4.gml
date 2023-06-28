if(menu_on == false) exit;

switch(obj_menu_title.menu_curr)
{
	case menus.profile1:
	obj_menu_title.menu_curr = menus.profile3;
	set_menu_title(menus.profile3);
	break;
	case menus.profile2:
	obj_menu_title.menu_curr = menus.profile1;
	set_menu_title(menus.profile1);
	break;
	case menus.profile3:
	obj_menu_title.menu_curr = menus.profile2;
	set_menu_title(menus.profile2);
	break;
	
	case menus.customize1:
	obj_menu_title.menu_curr = menus.customize3;
	set_menu_title(menus.customize3);
	break;
	case menus.customize2:
	obj_menu_title.menu_curr = menus.customize1;
	set_menu_title(menus.customize1);
	break;
	case menus.customize3:
	obj_menu_title.menu_curr = menus.customize2;
	set_menu_title(menus.customize2);
	break;
}