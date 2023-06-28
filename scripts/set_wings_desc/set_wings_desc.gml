///@description set_wings_desc
///@arg wings_num
function set_wings_desc(argument0)
{
	var txt_des = "";
	var txt_class1 = "";
	var txt_class2 = "";
	var txt_grade1 = "";
	var txt_grade2 = "";
	var w = argument0;
	switch(w)
	{
		case wings.magix:
		txt_des = "";
		txt_class1 = "";
		txt_class2 = "";
		txt_grade1 = "";
		txt_grade2 = "";
		break;
		case wings.charmix:
		txt_des = "Charmix boosts the magical energy of a fairy for a short time, making her more powerful and allowing her to use magic in more diverse environments.";
		txt_class1 = "Astrology";
		txt_class2 = "Mythology";
		txt_grade1 = "D";
		txt_grade2 = "D";
		break;
		case wings.mythix:
		txt_des = "A fairy must prove herself before the Ancestral Wands. In turn, the wand she receives will grant her Mythix.";
		txt_class1 = "Enchantments";
		txt_class2 = "";
		txt_grade1 = "D";
		txt_grade2 = "";
		break;
		case wings.lovix:
		txt_des = "Lovix protects its users from the cold and implements in them ice and cold-based powers.";
		txt_class1 = "Elemntology";
		txt_class2 = "Botany";
		txt_grade1 = "D";
		txt_grade2 = "D";
		break;
		case wings.dreamix:
		txt_des = "The source of Dreamix power is dreams and talents.";
		txt_class1 = "Astrology";
		txt_class2 = "";
		txt_grade1 = "B";
		txt_grade2 = "";
		break;
		case wings.harmonix:
		txt_des = "In order for a fairy to earn Harmonix, they must locate and open the Sirenix Book. Their Guardians of Sirenix will then grant them Harmonix.";
		txt_class1 = "Mythology";
		txt_class2 = "";
		txt_grade1 = "B";
		txt_grade2 = "";
		break;
		case wings.sophix:
		txt_des = "Sophix allows fairies to magically unite with nature as it is a source of emotional and instinctive energy.";
		txt_class1 = "Botany";
		txt_class2 = "";
		txt_grade1 = "B";
		txt_grade2 = "";
		break;
		case wings.cosmix:
		txt_des = "Cosmix is the power of the cosmos and originates from light.";
		txt_class1 = "Elementology";
		txt_class2 = "";
		txt_grade1 = "B";
		txt_grade2 = "";
		break;
		case wings.onyrix:
		txt_des = "Onyrix is the evolved form of Dreamix. With Onyrix, fairies are granted the ability to enter the World of Dreams.";
		txt_class1 = "Astrology";
		txt_class2 = "";
		txt_grade1 = "S";
		txt_grade2 = "";
		break;
		case wings.bloomix:
		txt_des = "In order to earn Bloomix, a fairy must have a part of the Dragon Flame. She must then perform a good and courageous act worthy of a fairy.";
		txt_class1 = "Astrology";
		txt_class2 = "Enchantments";
		txt_grade1 = "B";
		txt_grade2 = "D";
		break;
		case wings.sirenix:
		txt_des = "If a fairy does not complete the Sirenix Quest within one lunar cycle, they will lose their powers forever.";
		txt_class1 = "Mythology";
		txt_class2 = "";
		txt_grade1 = "S";
		txt_grade2 = "";
		break;
		case wings.crystalSirenix:
		txt_des = "Crystal Sirenix is a mysterious offshoot of Sirenix. It grants the ability to traverse environments not fit for life.";
		txt_class1 = "Mythology";
		txt_class2 = "Enchantments";
		txt_grade1 = "B";
		txt_grade2 = "D";
		break;
		case wings.enchantix:
		txt_des = "Enchantix fairies the Guardian Fairies of their respective homeworlds, bound to protect their worlds from evil and destruction.";
		txt_class1 = "Botany";
		txt_class2 = "Enchantments";
		txt_grade1 = "B";
		txt_grade2 = "D";
		break;
		case wings.butterflix:
		txt_des = "As the essence of the nature, Butterflix grants its users nature-based power. However, it cannot damage nature itself.";
		txt_class1 = "Botany";
		txt_class2 = "";
		txt_grade1 = "S";
		txt_grade2 = "";
		break;
		case wings.tynix:
		txt_des = "Tynix grants fairies the ability to enter the MiniWorlds, as well as teleport themselves from the MiniWorlds to the normal world.";
		txt_class1 = "Elementology";
		txt_class2 = "";
		txt_grade1 = "S";
		txt_grade2 = "";
		break;
		case wings.believix:
		txt_des = "Believix enables a fairy to reach the heart of the people and their feelings. It gives the fairy new energy and the power to heal whoever is in need.";
		txt_class1 = "Elementology";
		txt_class2 = "Enchantments";
		txt_grade1 = "B";
		txt_grade2 = "D";
		break;
	}
	var sp1 = manager_students.master_student_1.spr_wings;
	var sp2 = manager_students.master_student_1.spr_battle;
	var sw = manager_students.student_1_wings;
	var p = manager_students.class_points_1;
	switch(obj_menu_title.menu_curr)
	{
		case menus.customize1: 
		sw =  manager_students.student_1_wings;
		sp1 = manager_students.master_student_1.spr_wings;
		sp2 = manager_students.master_student_1.spr_battle;
		 p = manager_students.class_points_1;
		break;
		case menus.customize2: 
		sw =  manager_students.student_2_wings;
		sp1 = manager_students.master_student_2.spr_wings;
		sp2 = manager_students.master_student_2.spr_battle;
		 p = manager_students.class_points_2;
		break;
		case menus.customize3: 
		sw =  manager_students.student_3_wings;
		sp1 = manager_students.master_student_3.spr_wings;
		sp2 = manager_students.master_student_3.spr_battle;
		 p = manager_students.class_points_3;
		break;

	}
	
	obj_menu_wings_desc.txt_curr = string_wrap(txt_des, obj_menu_wings_desc.txt_w);
	obj_menu_wings_name.txt_curr = get_wings_name(w);
	obj_menu_wings_name.wings_curr = w;
	obj_menu_wings_tree_select.alarm[0] = 1;
	obj_menu_wings_grade.txt_class_1 = txt_class1;
	obj_menu_wings_grade.txt_class_2 = txt_class2;
	obj_menu_wings_grade.txt_grade_1 = txt_grade1;
	obj_menu_wings_grade.txt_grade_2 = txt_grade2;
	obj_menu_wings_name.spr_wings = sp1;
	obj_menu_wings_name.spr_battle = sp2;
	
	if(obj_menu_wings_name.wings_curr = sw)
	{
		obj_menu_wings_name.spr_col = c_white;
		obj_menu_wings_upgrade.draw_on = false;
	}
	else
	{
		obj_menu_wings_name.spr_col = c_white;
		obj_menu_wings_upgrade.draw_on = true;
	}
	
	if(check_wing_upgrade(p,w) == false)
	{
		obj_menu_wings_upgrade.draw_on = false;
	}
	if(check_wing_upgrade2(sw,w) == false)
	{
		obj_menu_wings_upgrade.draw_on = false;
	}
	
	
}