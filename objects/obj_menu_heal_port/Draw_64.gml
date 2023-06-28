if(menu_on == false) exit;

if(custom_char)
	draw_student_portrait(spr_x,spr_y,0.5);
else
	draw_sprite_ext(spr,0,spr_x,spr_y,0.5,0.5,0,c_white,1);

draw_set_font(font_12);
draw_text_color(txt_x_1,txt_y,txt_hp_1,c_black,c_black,c_black,c_black,1);
draw_text_color(txt_x_2,txt_y,"/",c_black,c_black,c_black,c_black,1);
draw_text_color(txt_x_3,txt_y,txt_hp_2,c_black,c_black,c_black,c_black,1);
