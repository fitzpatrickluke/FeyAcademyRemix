if(manager_cc.cc_on || manager_choose_student.on || manager_choose_element.on)
	exit;
	
if(txt_count <= 8)
{
	draw_sprite(spr_student,0,spr_student_x*scale,spr_student_y*scale);
	draw_sprite_ext(spr_portrait_boarder_UI,3,spr_student_x*scale,spr_student_y*scale,2*scale,2*scale,0,c_white,1);
	
}

if(txt_count <= 6)
{
	
draw_set_font(font_12);

var t = string_wrap(txt[txt_count],txt_w*manager_students.master_scale);
draw_text_color(txt_x*manager_students.master_scale,txt_y*manager_students.master_scale,t,txtCol,txtCol,txtCol,txtCol,1);

//draw_sprite(spr_boarder_UI,0,0,0);

}









