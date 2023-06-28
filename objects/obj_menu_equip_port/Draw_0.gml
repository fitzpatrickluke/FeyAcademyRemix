if(menu_on == false) exit;

draw_sprite(spr_menu_equip_port,0,x,y);

if(
select_on_1 ||
(mouse_x >= select_x && mouse_x < select_x+select_w
&& mouse_y >= select_y_1 && mouse_y < select_y_1+select_h)
)
{
	draw_sprite(spr_menu_equip_port,1,x,select_y_1);
}

if(
select_on_2 ||
(mouse_x >= select_x && mouse_x < select_x+select_w
&& mouse_y >= select_y_2 && mouse_y < select_y_2+select_h)
)
{
	draw_sprite(spr_menu_equip_port,1,x,select_y_2);
}