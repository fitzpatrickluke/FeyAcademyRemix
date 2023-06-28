if(menu_on == false) exit;

switch(obj_menu_title.menu_curr)
{
	case menus.codex1:
	obj_menu_title.menu_curr = menus.codex6;
	set_menu_codex_box(menus.codex6);
	break;
	case menus.codex2:
	obj_menu_title.menu_curr = menus.codex1;
	set_menu_codex_box(menus.codex1);
	break;
	case menus.codex3:
	obj_menu_title.menu_curr = menus.codex2;
	set_menu_codex_box(menus.codex2);
	break;
	case menus.codex4:
	obj_menu_title.menu_curr = menus.codex3;
	set_menu_codex_box(menus.codex3);
	break;
	case menus.codex5:
	obj_menu_title.menu_curr = menus.codex4;
	set_menu_codex_box(menus.codex4);
	break;
	case menus.codex6:
	obj_menu_title.menu_curr = menus.codex5;
	set_menu_codex_box(menus.codex5);
	break;
}