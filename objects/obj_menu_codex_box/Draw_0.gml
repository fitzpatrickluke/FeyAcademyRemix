if(menu_on == false) exit;

draw_sprite(spr_menu_codex_box,spr_num,x,y);



if(spr_num == 0)
{
	for(var i = 0; i < 4; i+=1)
	{
		for(var j = 0; j < 5; j+=1)
		{
			var nn = j + 5*i + plusMenu;
			if(manager_enemy.codex_list[|nn])
				draw_sprite(spr_icon,nn,set_codex_x+set_codex_size*j,set_codex_y+set_codex_size*i);
			else
				draw_sprite_ext(spr_icon,nn,set_codex_x+set_codex_size*j,set_codex_y+set_codex_size*i,1,1,0,c_black,1);
			draw_sprite(enemy_full_mini,0,set_codex_x+set_codex_size*j,set_codex_y+set_codex_size*i);
		}
	}
}
// half page
else if(spr_num == 1)
{
	for(var i = 0; i < 4; i+=1)
	{
		var nn = i + plusMenu;
		if(manager_enemy.codex_list[|nn])
			draw_sprite(spr_icon,nn,set_codex_x+set_codex_size*i,set_codex_y);
		else
			draw_sprite_ext(spr_icon,nn,set_codex_x+set_codex_size*i,set_codex_y,1,1,0,c_black,1);
		draw_sprite(spr_icon,0,set_codex_x+set_codex_size*i,set_codex_y);
	}
}
// legendary page
else if(spr_num == 2)
{
	for(var i = 0; i < 3; i+=1)
	{
		for(var j = 0; j < 5; j+=1)
		{
			var nn = j + 5*i + plusMenu;
			if(manager_enemy.codex_list[|nn])
				draw_sprite(spr_icon,nn,set_codex_x+set_codex_size*j,set_codex_y+set_codex_size*i);
			else
				draw_sprite_ext(spr_icon,nn,set_codex_x+set_codex_size*j,set_codex_y+set_codex_size*i,1,1,0,c_black,1);
			draw_sprite(spr_icon,0,set_codex_x+set_codex_size*j,set_codex_y+set_codex_size*i);
		}
	}
	var i = 3;
	for(var j = 0; j < 3; j+=1)
	{
		var nn = j + 5*i + plusMenu;
		if(manager_enemy.codex_list[|nn])
			draw_sprite(spr_icon,nn,set_codex_x+set_codex_size*j,set_codex_y+set_codex_size*i);
		else
			draw_sprite_ext(spr_icon,nn,set_codex_x+set_codex_size*j,set_codex_y+set_codex_size*i,1,1,0,c_black,1);
		draw_sprite(spr_icon,0,set_codex_x+set_codex_size*j,set_codex_y+set_codex_size*i);
	}
}
