if(menu_on == false) exit;

draw_set_font(font_10);
for(var i = 0; i < col_num; i+=1)
{
	for(var j = 0; j < row_num; j+=1)
	{
		if(i*row_num+j+1+num_aug_curr > drop_num_total)
			exit;
			
		draw_text_color(txt_x+txt_w*i,txt_y+txt_h*j,get_drop_name(i*row_num+j+1+num_aug_curr),c_black,c_black,c_black,c_black,1);
		draw_text_color(txt_x_2+txt_w*i,txt_y+txt_h*j,string(manager_students.drop_items[| (i*row_num+j+1+num_aug_curr)]),c_black,c_black,c_black,c_black,1);
	}
}