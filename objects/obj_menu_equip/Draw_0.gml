if(menu_on == false) exit;

for(var i = 0; i < col_num; i+=1)
{
	for(var j = 0; j < row_num; j+=1)
	{
		var myNum = (i*row_num+j+drop_aug_num)+1;
		
		if(myNum >= manager_students.equip_item_total)
			exit;
		
		
		var spr_num = 0;
		if(manager_students.equip_items[| myNum] <= 0)
			spr_num = 3;
		else if(
		choose_on && 
		(mouse_x >= select_x+select_w*i && mouse_x < select_x+select_w*(i+1)
		&& mouse_y >= select_y+select_h*j && mouse_y < select_y+select_h*(j+1))
		)
			spr_num = 1;
			
		if(obj_menu_equip_use.menu_on && 
		obj_menu_equip_use.item_num == myNum)
			spr_num = 1;
			
		
		draw_sprite(spr_menu_bag_button,spr_num,x+spr_w*i,y+spr_h*j);
	}
}
