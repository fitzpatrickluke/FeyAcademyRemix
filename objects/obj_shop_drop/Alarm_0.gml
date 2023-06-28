curr_menu_num += 1;
if(curr_menu_num >= 4)
	curr_menu_num = 0;

set_shop_button_drop_switch(original_num+curr_menu_num*menu_size, id);