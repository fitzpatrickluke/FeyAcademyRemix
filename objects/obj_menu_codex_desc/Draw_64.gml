if(menu_on == false) exit;

draw_set_font(font_12)
draw_text_color(txt_drop_x_1,txt_drop_y,txt_drop_1,c_black,c_black,c_black,c_black,1);
draw_text_color(txt_drop_x_2,txt_drop_y,txt_drop_2,c_black,c_black,c_black,c_black,1);


draw_set_font(font_16);
draw_text_color(txt_loc_x,txt_loc_y,txt_loc,c_black,c_black,c_black,c_black,1);

if(mon_on)
{
	draw_set_font(font_16);
	draw_text_color(txt_name_x,txt_name_y,txt_name,c_black,c_black,c_black,c_black,1);

	draw_text_color(txt_type_x_1,txt_type_y,txt_type_1,c_black,c_black,c_black,c_black,1);
	draw_text_color(txt_type_x_2,txt_type_y,txt_type_2,c_black,c_black,c_black,c_black,1);

	draw_set_font(font_12);
	draw_text_color(txt_des_x,txt_des_y,txt_des,c_black,c_black,c_black,c_black,1);
}

