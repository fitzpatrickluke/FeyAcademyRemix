///@description check_menu_equip_special
function check_menu_equip_special()
{
	var check = false;
	
	var ply = manager_students.master_student_1;
	var item_num = obj_menu_equip_use.item_num;
	
	if(obj_menu_title.equip_curr == 1)
		ply = manager_students.master_student_1;
	if(obj_menu_title.equip_curr == 2)
		ply = manager_students.master_student_2;
	if(obj_menu_title.equip_curr == 3)
		ply = manager_students.master_student_3;
		
	switch(item_num)
	{
		case 89:
		if(ply == student_hana)
			check = true;
		break;
		case 90:
		if(ply == student_lapis)
			check = true;
		break;
		case 91:
		if(ply == student_fernando)
			check = true;
		break;
		case 92:
		if(ply == student_crystal)
			check = true;
		break;
		case 93:
		if(ply == student_blanche)
			check = true;
		break;
		case 94:
		if(ply == student_chip)
			check = true;
		break;
		case 95:
		if(ply == student_bridgit)
			check = true;
		break;
		case 96:
		if(ply == student_enya)
			check = true;
		break;
		case 97:
		if(ply == student_glenn)
			check = true;
		break;
		case 98:
		if(ply == student_arianna)
			check = true;
		break;
		case 99:
		if(ply == student_cindy)
			check = true;
		break;
		case 100:
		if(ply == student_gunter)
			check = true;
		break;
		case 101:
		if(ply == student_talia)
			check = true;
		break;
		case 102:
		if(ply == student_tigris)
			check = true;
		break;
		case 103:
		if(ply == student_basil)
			check = true;
		break;
		case 104:
		if(ply == student_vivian)
			check = true;
		break;
		case 105:
		if(ply == student_nyx)
			check = true;
		break;
		case 106:
		if(ply == student_damien)
			check = true;
		break;
		case 107:
		if(ply == student_paige)
			check = true;
		break;
		case 108:
		if(ply == student_maria)
			check = true;
		break;
		case 109:
		if(ply == student_chris)
			check = true;
		break;
		case 110:
		if(ply == student_tasha)
			check = true;
		break;
		case 111:
		if(ply == student_gina)
			check = true;
		break;
		case 112:
		if(ply == student_rocky)
			check = true;
		break;
	}
	
	
	return check;
}