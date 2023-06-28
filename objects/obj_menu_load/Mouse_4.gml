if(menu_on == false) exit;
if(click_on == false) exit;


obj_menu_load.alarm[1] = 1;
save_on = true;
instance_create_depth(0,0,-10,manager_choice);
show_debug_message("I WANT TO LOAD");
