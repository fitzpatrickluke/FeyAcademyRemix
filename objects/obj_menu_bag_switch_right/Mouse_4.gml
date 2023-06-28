if(menu_on == false) exit;

switch(obj_menu_bag.num_aug_curr)
{
	case obj_menu_bag.num_aug_1:
		obj_menu_bag.num_aug_curr = obj_menu_bag.num_aug_2;
	break;
	case obj_menu_bag.num_aug_2:
		obj_menu_bag.num_aug_curr = obj_menu_bag.num_aug_3;
	break;
	case obj_menu_bag.num_aug_3:
		obj_menu_bag.num_aug_curr = obj_menu_bag.num_aug_1;
	break;
}