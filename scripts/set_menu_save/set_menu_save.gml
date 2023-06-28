///@description set_menu_save
///@arg menu_num
///@arg id
function set_menu_save(argument0, argument1)
{
	var n = manager_students.master_student_1.student_name;
	var p = phase.phase_start;
	var p_txt = "";

	var s_1 = manager_students.master_student_1;
	var s_2 = manager_students.master_student_2;
	var s_3 = manager_students.master_student_3;
	
	var f_1 = manager_students.student_1_wings;
	var f_2 = manager_students.student_2_wings;
	var f_3 = manager_students.student_3_wings;
	
	var m = false;
	
	if(argument0 == 0)
	{
		ini_open("feyAcademy_master_save.ini");
		n = ini_read_string("student_1","student_name","Name");
		p = ini_read_real("manager","curr_phase",phase.phase_start);
		s_1 = ini_read_real("manager","master_students_1",student_crystal);
		f_1 = ini_read_real("manager","student_1_wings",wings.magix);
		s_2 = ini_read_real("manager","master_students_2",student_crystal);
		f_2 = ini_read_real("manager","student_2_wings",wings.magix);
		s_3 = ini_read_real("manager","master_students_3",student_crystal);
		f_3 = ini_read_real("manager","student_3_wings",wings.magix);
		if(ini_read_real("manager","save",false))
			m = true;
		ini_close();
	}
	else if(argument0 == 1)
	{
		ini_open("feyAcademy_master_save_2.ini");
		n = ini_read_string("student_1","student_name","Name");
		p = ini_read_real("manager","curr_phase",phase.phase_start);
		s_1 = ini_read_real("manager","master_students_1",student_crystal);
		f_1 = ini_read_real("manager","student_1_wings",wings.magix);
		s_2 = ini_read_real("manager","master_students_2",student_crystal);
		f_2 = ini_read_real("manager","student_2_wings",wings.magix);
		s_3 = ini_read_real("manager","master_students_3",student_crystal);
		f_3 = ini_read_real("manager","student_3_wings",wings.magix);
		if(ini_read_real("manager","save",false))
			m = true;
		ini_close();
	}
	
	if(m == true)
	{
	switch(p)
	{
		case phase.phase_start:
		case phase.phase_ff: 
		p_txt = "Flower Feilds";
		break;
		case phase.phase_ww: 
		p_txt = "Willow Woods";
		break;
		case phase.phase_af: 
		p_txt = "Autumn Falls";
		break;
		case phase.phase_sp: 
		p_txt = "Snowflake Point";
		break;
		case phase.phase_ss: 
		p_txt = "Sakura Steps";
		break;
		case phase.phase_ft: 
		p_txt = "Fey Temple";
		break;
		case phase.phase_aa: 
		case phase.phase_aa2: 
		p_txt = "Ancient Abyss";
		break;
		case phase.phase_er: 
		case phase.phase_er2: 
		p_txt = "End of the Rainbow";
		break;
		case phase.phase_end: 
		p_txt = "Complete";
		break;
	}
	
	argument1.desc_on = true;

	
	argument1.txt_name = n;
	argument1.txt_phase = p_txt;
	
	argument1.spr_ply_1 = s_1.spr_battle;
	argument1.spr_wing_1 = s_1.spr_wings;
	argument1.spr_form_1 = f_1;
	
	argument1.spr_ply_2 = s_2.spr_battle;
	argument1.spr_wing_2 = s_2.spr_wings;
	argument1.spr_form_2 = f_2;
	
	argument1.spr_ply_3 = s_3.spr_battle;
	argument1.spr_wing_3 = s_3.spr_wings;
	argument1.spr_form_3 = f_3;
	}
	else
		argument1.desc_on = false;
	
}