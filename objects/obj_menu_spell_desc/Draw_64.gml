if(menu_on == false) exit;

draw_set_font(font_12);

draw_text_color(txt_name_x,txt_name_y,txt_name,c_black,c_black,c_black,c_black,1);

draw_text_color(txt_desc_x,txt_desc_y,txt_desc,c_black,c_black,c_black,c_black,1);


draw_text_color(txt_elem_x_1,txt_elem_y,txt_elem,c_black,c_black,c_black,c_black,1);
draw_text_color(txt_elem_x_2,txt_elem_y,txt_mp,c_black,c_black,c_black,c_black,1);


	
if(stat_2_on)
{
	draw_text_color(txt_stat_x_1,txt_stat_y_2,txt_stat_1,c_black,c_black,c_black,c_black,1);
	draw_text_color(txt_stat_x_2,txt_stat_y_2,txt_stat_info_1,c_black,c_black,c_black,c_black,1);

	draw_text_color(txt_stat_x_1,txt_stat_y_1,txt_stat_2,c_black,c_black,c_black,c_black,1);
	draw_text_color(txt_stat_x_2,txt_stat_y_1,txt_stat_info_2,c_black,c_black,c_black,c_black,1);
}
else
{
	draw_text_color(txt_stat_x_1,txt_stat_y_1,txt_stat_1,c_black,c_black,c_black,c_black,1);
	draw_text_color(txt_stat_x_2,txt_stat_y_1,txt_stat_info_1,c_black,c_black,c_black,c_black,1);
}

