if(menu_on == false) exit;

if(spr_num == 0)
{
	for(var i = 0; i < 4; i+=1)
	{
		for(var j = 0; j < 5; j+=1)
		{
			if(mouse_x >= set_codex_x+set_codex_size*j && mouse_x < set_codex_x + set_codex_size*(j+1)
			&& mouse_y >= set_codex_y+set_codex_size*i && mouse_y < set_codex_y + set_codex_size*(i+1))
			{
				curr_mon = j + 5*i + plusMenu;
				menu_on = false;
				obj_menu_codex_switch_left.menu_on = false;
				obj_menu_codex_switch_right.menu_on = false;
				obj_menu_codex_desc.menu_on = true;
				set_menu_codex_desc(curr_mon);
			}
		}
	}
}
// half page
else if(spr_num == 1)
{
	
	for(var i = 0; i < 4; i+=1)
	{
		if(mouse_x >= set_codex_x+set_codex_size*j && mouse_x < set_codex_x + set_codex_size*(j+1)
		&& mouse_y >= set_codex_y && mouse_y < set_codex_y + set_codex_size)
		{
			curr_mon = j + 5*i + plusMenu;
			menu_on = false;
			obj_menu_codex_switch_left.menu_on = false;
			obj_menu_codex_switch_right.menu_on = false;
			obj_menu_codex_desc.menu_on = true;
			set_menu_codex_desc(curr_mon);
		}
	}
}
// legendary page
else if(spr_num == 2)
{
	for(var i = 0; i < 3; i+=1)
	{
		for(var j = 0; j < 5; j+=1)
		{
			if(mouse_x >= set_codex_x+set_codex_size*j && mouse_x < set_codex_x + set_codex_size*(j+1)
			&& mouse_y >= set_codex_y+set_codex_size*i && mouse_y < set_codex_y + set_codex_size*(i+1))
			{
				curr_mon = j + 5*i + plusMenu;
				menu_on = false;
				obj_menu_codex_switch_left.menu_on = false;
				obj_menu_codex_switch_right.menu_on = false;
				obj_menu_codex_desc.menu_on = true;
				set_menu_codex_desc(curr_mon);
			}
		}
	}
	var i = 3;
	for(var j = 0; j < 3; j+=1)
	{
		if(mouse_x >= set_codex_x+set_codex_size*j && mouse_x < set_codex_x + set_codex_size*(j+1)
		&& mouse_y >= set_codex_y+set_codex_size*i && mouse_y < set_codex_y + set_codex_size*(i+1))
		{
			curr_mon = j + 5*i + plusMenu;
			menu_on = false;
			obj_menu_codex_switch_left.menu_on = false;
			obj_menu_codex_switch_right.menu_on = false;
			obj_menu_codex_desc.menu_on = true;
			set_menu_codex_desc(curr_mon);
		}
	}
}