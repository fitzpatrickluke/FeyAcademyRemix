if(menu_on == false) exit;
if(draw_on == false) exit;

switch(obj_menu_title.menu_curr)
{
	case menus.customize1:
	audio_play_sound(soundEffect_upgrade,1,false);
	manager_students.student_1_wings = obj_menu_wings_name.wings_curr;
	set_wings_desc(obj_menu_wings_name.wings_curr);
	break;
	
	case menus.customize2:
	audio_play_sound(soundEffect_upgrade,1,false);
	manager_students.student_2_wings = obj_menu_wings_name.wings_curr;
	set_wings_desc(obj_menu_wings_name.wings_curr);
	break;
	
	case menus.customize3:
	audio_play_sound(soundEffect_upgrade,1,false);
	manager_students.student_3_wings = obj_menu_wings_name.wings_curr;
	set_wings_desc(obj_menu_wings_name.wings_curr);
	break;
}


				