draw_sprite_ext(spr_portrait_boarder_UI,0,spr_student_x,spr_student_y,scale*2,scale*2,0,c_white,1);
//draw_sprite_ext(spr_student,0,spr_student_x,spr_student_y,scale,scale,0,c_white,1);
draw_sprite(spr_student,0,spr_student_x,spr_student_y);
draw_sprite_ext(spr_portrait_boarder_UI,3,spr_student_x,spr_student_y,scale*2,scale*2,0,c_white,1);

draw_sprite_ext(spr,0,txt_box_x,txt_box_y,scale,scale,0,c_white,1);
	
draw_set_font(font_12);
var t = string_wrap(txt_curr,txt_w);
draw_text_color(txt_x,txt_y,t,txtCol,txtCol,txtCol,txtCol,1);