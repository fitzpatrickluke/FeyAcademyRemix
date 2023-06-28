if(menu_on == false) exit;

switch_num -= 1;
if(switch_num < 0)
	switch_num = 4;
	
obj_menu_equip_switch_right.switch_num = switch_num;
	
obj_menu_equip.drop_aug_num = obj_menu_equip.drop_aug*switch_num;


