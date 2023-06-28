if(menu_on == false) exit;

draw_set_font(font_10);
for(var i = 0; i < col_num; i+=1)
{
	for(var j = 0; j < row_num; j+=1)
	{
		var myNum = (i*row_num+j+drop_aug_num)+1;
		if(myNum >= manager_students.equip_item_total)
			exit;
			
		draw_text_color(txt_x+txt_w*i,txt_y+txt_h*j,manager_items.equip_list[# myNum, 0],c_black,c_black,c_black,c_black,1);
		draw_text_color(txt_x_2+txt_w*i,txt_y+txt_h*j,string(manager_students.equip_items[| myNum]),c_black,c_black,c_black,c_black,1);
	}
}