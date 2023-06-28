if(menu_on == false) exit;

for(var i = 0; i < col_num; i+=1)
{
	for(var j = 0; j < row_num; j+=1)
	{
		if(i*row_num+j+1+num_aug_curr > drop_num_total)
			exit;
		
		var spr_num = 1;
		if(manager_students.drop_items[| (i*row_num+j+1+num_aug_curr)] > 0)
			spr_num = 0;
		draw_sprite(spr_menu_bag_button,spr_num,x+spr_w*i,y+spr_h*j);
	}
}
