if(menu_on == false) exit;

if(no_heal_on)
	draw_sprite(spr_menu_item_port,2,x,y);
else if(no_heal_on_2)
	draw_sprite(spr_menu_item_port,3,x,y);
else
	draw_sprite(spr_menu_item_port,spr_num,x,y);

