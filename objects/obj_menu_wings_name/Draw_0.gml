if(menu_on == false) exit;

draw_sprite(spr_menu_wings_name,0,x,y);

if(custom_char)
{
	draw_menu_fairy(x,y,spr_col,wings_curr);
}
else
{
	draw_sprite_ext(spr_wings,wings_curr,x,y,1,1,0,spr_col,1);
	draw_sprite_ext(spr_battle,wings_curr,x,y,1,1,0,spr_col,1);
}

