if(menu_on == false) exit;

draw_sprite_ext(spr_menu_portrait_boarder,0,spr_x,spr_y,scale,scale,0,c_white,1);

if(custom_char)
	draw_student_portrait(spr_x,spr_y,0.5);
else
	draw_sprite_ext(spr_curr,0,spr_x,spr_y,0.5,0.5,0,c_white,1);
//draw_sprite_ext(spr_curr,0,spr_x,spr_y,scale_2,scale_2,0,c_white,1);
	
draw_sprite_ext(spr_menu_portrait_boarder,3,spr_x,spr_y,scale,scale,0,c_white,1);