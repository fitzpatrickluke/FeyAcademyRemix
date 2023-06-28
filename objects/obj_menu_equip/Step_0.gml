if(menu_on == false) exit;
if(choose_on == false) exit;

if(mouse_check_button(mb_left))
{
	
	
for(var i = 0; i < col_num; i+=1)
{
	for(var j = 0; j < row_num; j+=1)
	{
		var myNum = (i*row_num+j+drop_aug_num)+1;
		if(myNum >= manager_students.equip_item_total)
			exit;
			
		if(mouse_x >= select_x+select_w*i && mouse_x < select_x+select_w*(i+1)
		&& mouse_y >= select_y+select_h*j && mouse_y < select_y+select_h*(j+1))
		{
			if(manager_students.equip_items[| myNum] > 0)
			{
			show_debug_message("I WANT TO EQUIP OOH LA LA");
			show_debug_message(":::::::::::::" + string(myNum))
			obj_menu_title.using_curr = true;
			obj_menu_equip_use.item_num = myNum;
			obj_menu_equip_use.menu_on = true;
			obj_menu_equip_desc.txt_desc = string_wrap(get_equip_desc(myNum), obj_menu_equip_desc.txt_desc_w);
			obj_menu_equip_desc.menu_on = true;
			if(obj_menu_equip_use.item_num >= 99 && check_menu_equip_special() == false)
				obj_menu_equip_use.menu_on = false;
			
			choose_on = false;
			}
		}
	}
}


}


