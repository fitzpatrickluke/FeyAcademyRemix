///@description set_menu_codex_box
///@arg menu_curr
function set_menu_codex_box(argument0)
{
	var sNum = 0;
	var mNum = 1;
	switch(argument0)
	{
		case menus.codex1:
		sNum = 0;
		mNum = 1;
		break;
		case menus.codex2:
		sNum = 0;
		mNum = 21;
		break;
		case menus.codex3:
		sNum = 0;
		mNum = 41;
		break;
		case menus.codex4:
		sNum = 0;
		mNum = 61;
		break;
		case menus.codex5:
		sNum = 1;
		mNum = 81;
		break;
		case menus.codex6:
		sNum = 2;
		mNum = 85;
		break;
		
	}
	
	obj_menu_codex_box.spr_num = sNum;
	obj_menu_codex_box.plusMenu = mNum;
}