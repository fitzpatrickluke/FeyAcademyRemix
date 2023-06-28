if(!cc_on)
	exit;
	
draw_sprite_ext(spr_background,2,0,0,scale,scale,0,c_white,1);

// draw indication overlays
if(mouseX >= name_select_x && mouseX < name_select_x + name_select_w
&& mouseY >= name_select_y && mouseY < name_select_y + name_select_h)
	draw_sprite_part_ext(spr_background,1,0,0,name_select_w/scale,name_select_h/scale,name_select_x,name_select_y,scale,scale,c_white,1);
if(enter_name)
	draw_sprite_part_ext(spr_background,1,0,0,name_select_w/scale,name_select_h/scale,name_select_x,name_select_y,scale,scale,c_white,1);
if(mouseX >= finish_select_x && mouseX < finish_select_x+finish_select_w
&& mouseY >= finish_select_y && mouseY < finish_select_y+finish_select_h)
	draw_sprite_part_ext(spr_background,1,0,0,finish_select_w/scale,finish_select_h/scale,finish_select_x,finish_select_y,scale,scale,c_white,1);
#region
if(mouseX >= menu_l_select_x_1 && mouseX < menu_l_select_x_1 + menu_select_w
&& mouseY >= menu_l_select_y_1 && mouseY < menu_l_select_y_1 + menu_select_h)
	draw_sprite_part_ext(spr_background,1,0,16,menu_select_w/scale,menu_select_h/scale,menu_l_select_x_1,menu_l_select_y_1,scale,scale,c_white,1);
if(mouseX >= menu_l_select_x_1 && mouseX < menu_l_select_x_1 + menu_select_w
&& mouseY >= menu_l_select_y_2 && mouseY < menu_l_select_y_2 + menu_select_h)
	draw_sprite_part_ext(spr_background,1,0,16,menu_select_w/scale,menu_select_h/scale,menu_l_select_x_1,menu_l_select_y_2,scale,scale,c_white,1);
if(mouseX >= menu_l_select_x_1 && mouseX < menu_l_select_x_1 + menu_select_w
&& mouseY >= menu_l_select_y_3 && mouseY < menu_l_select_y_3 + menu_select_h)
	draw_sprite_part_ext(spr_background,1,0,16,menu_select_w/scale,menu_select_h/scale,menu_l_select_x_1,menu_l_select_y_3,scale,scale,c_white,1);
if(mouseX >= menu_l_select_x_1 && mouseX < menu_l_select_x_1 + menu_select_w
&& mouseY >= menu_l_select_y_4 && mouseY < menu_l_select_y_4 + menu_select_h)
	draw_sprite_part_ext(spr_background,1,0,16,menu_select_w/scale,menu_select_h/scale,menu_l_select_x_1,menu_l_select_y_4,scale,scale,c_white,1);
if(mouseX >= menu_l_select_x_1 && mouseX < menu_l_select_x_1 + menu_select_w
&& mouseY >= menu_l_select_y_5 && mouseY < menu_l_select_y_5 + menu_select_h)
	draw_sprite_part_ext(spr_background,1,0,16,menu_select_w/scale,menu_select_h/scale,menu_l_select_x_1,menu_l_select_y_5,scale,scale,c_white,1);
/*
if(mouseX >= menu_l_select_x_1 && mouseX < menu_l_select_x_1 + menu_select_w
&& mouseY >= menu_l_select_y_0 && mouseY < menu_l_select_y_0 + menu_select_h)
	draw_sprite_part_ext(spr_background,1,0,16,menu_select_w/scale,menu_select_h/scale,menu_l_select_x_1,menu_l_select_y_0,scale,scale,c_white,1);
*/


if(mouseX >= menu_l_select_x_2 && mouseX < menu_l_select_x_2 + menu_select_w
&& mouseY >= menu_l_select_y_1 && mouseY < menu_l_select_y_1 + menu_select_h)
	draw_sprite_part_ext(spr_background,1,0,24,menu_select_w/scale,menu_select_h/scale,menu_l_select_x_2,menu_l_select_y_1,scale,scale,c_white,1);
if(mouseX >= menu_l_select_x_2 && mouseX < menu_l_select_x_2 + menu_select_w
&& mouseY >= menu_l_select_y_2 && mouseY < menu_l_select_y_2 + menu_select_h)
	draw_sprite_part_ext(spr_background,1,0,24,menu_select_w/scale,menu_select_h/scale,menu_l_select_x_2,menu_l_select_y_2,scale,scale,c_white,1);
if(mouseX >= menu_l_select_x_2 && mouseX < menu_l_select_x_2 + menu_select_w
&& mouseY >= menu_l_select_y_3 && mouseY < menu_l_select_y_3 + menu_select_h)
	draw_sprite_part_ext(spr_background,1,0,24,menu_select_w/scale,menu_select_h/scale,menu_l_select_x_2,menu_l_select_y_3,scale,scale,c_white,1);
if(mouseX >= menu_l_select_x_2 && mouseX < menu_l_select_x_2 + menu_select_w
&& mouseY >= menu_l_select_y_4 && mouseY < menu_l_select_y_4 + menu_select_h)
	draw_sprite_part_ext(spr_background,1,0,24,menu_select_w/scale,menu_select_h/scale,menu_l_select_x_2,menu_l_select_y_4,scale,scale,c_white,1);
if(mouseX >= menu_l_select_x_2 && mouseX < menu_l_select_x_2 + menu_select_w
&& mouseY >= menu_l_select_y_5 && mouseY < menu_l_select_y_5 + menu_select_h)
	draw_sprite_part_ext(spr_background,1,0,24,menu_select_w/scale,menu_select_h/scale,menu_l_select_x_2,menu_l_select_y_5,scale,scale,c_white,1);

if(mouseX >= menu_r_select_x_1 && mouseX < menu_r_select_x_1 + menu_select_w
&& mouseY >= menu_r_select_y_1 && mouseY < menu_r_select_y_1 + menu_select_h)
	draw_sprite_part_ext(spr_background,1,0,16,menu_select_w/scale,menu_select_h/scale,menu_r_select_x_1,menu_r_select_y_1,scale,scale,c_white,1);
if(mouseX >= menu_r_select_x_1 && mouseX < menu_r_select_x_1 + menu_select_w
&& mouseY >= menu_r_select_y_2 && mouseY < menu_r_select_y_2 + menu_select_h)
	draw_sprite_part_ext(spr_background,1,0,16,menu_select_w/scale,menu_select_h/scale,menu_r_select_x_1,menu_r_select_y_2,scale,scale,c_white,1);
if(mouseX >= menu_r_select_x_1 && mouseX < menu_r_select_x_1 + menu_select_w
&& mouseY >= menu_r_select_y_3 && mouseY < menu_r_select_y_3 + menu_select_h)
	draw_sprite_part_ext(spr_background,1,0,16,menu_select_w/scale,menu_select_h/scale,menu_r_select_x_1,menu_r_select_y_3,scale,scale,c_white,1);
if(mouseX >= menu_r_select_x_1 && mouseX < menu_r_select_x_1 + menu_select_w
&& mouseY >= menu_r_select_y_4 && mouseY < menu_r_select_y_4 + menu_select_h)
	draw_sprite_part_ext(spr_background,1,0,16,menu_select_w/scale,menu_select_h/scale,menu_r_select_x_1,menu_r_select_y_4,scale,scale,c_white,1);
if(mouseX >= menu_r_select_x_1 && mouseX < menu_r_select_x_1 + menu_select_w
&& mouseY >= menu_r_select_y_5 && mouseY < menu_r_select_y_5 + menu_select_h)
	draw_sprite_part_ext(spr_background,1,0,16,menu_select_w/scale,menu_select_h/scale,menu_r_select_x_1,menu_r_select_y_5,scale,scale,c_white,1);
if(mouseX >= menu_r_select_x_1 && mouseX < menu_r_select_x_1 + menu_select_w
&& mouseY >= menu_r_select_y_6 && mouseY < menu_r_select_y_6 + menu_select_h)
	draw_sprite_part_ext(spr_background,1,0,16,menu_select_w/scale,menu_select_h/scale,menu_r_select_x_1,menu_r_select_y_6,scale,scale,c_white,1);
if(mouseX >= menu_r_select_x_1 && mouseX < menu_r_select_x_1 + menu_select_w
&& mouseY >= menu_r_select_y_7 && mouseY < menu_r_select_y_7 + menu_select_h)
	draw_sprite_part_ext(spr_background,1,0,16,menu_select_w/scale,menu_select_h/scale,menu_r_select_x_1,menu_r_select_y_7,scale,scale,c_white,1);
if(mouseX >= menu_r_select_x_1 && mouseX < menu_r_select_x_1 + menu_select_w
&& mouseY >= menu_r_select_y_8 && mouseY < menu_r_select_y_8 + menu_select_h)
	draw_sprite_part_ext(spr_background,1,0,16,menu_select_w/scale,menu_select_h/scale,menu_r_select_x_1,menu_r_select_y_8,scale,scale,c_white,1);

if(mouseX >= menu_r_select_x_2 && mouseX < menu_r_select_x_2 + menu_select_w
&& mouseY >= menu_r_select_y_1 && mouseY < menu_r_select_y_1 + menu_select_h)
	draw_sprite_part_ext(spr_background,1,0,24,menu_select_w/scale,menu_select_h/scale,menu_r_select_x_2,menu_r_select_y_1,scale,scale,c_white,1);
if(mouseX >= menu_r_select_x_2 && mouseX < menu_r_select_x_2 + menu_select_w
&& mouseY >= menu_r_select_y_2 && mouseY < menu_r_select_y_2 + menu_select_h)
	draw_sprite_part_ext(spr_background,1,0,24,menu_select_w/scale,menu_select_h/scale,menu_r_select_x_2,menu_r_select_y_2,scale,scale,c_white,1);
if(mouseX >= menu_r_select_x_2 && mouseX < menu_r_select_x_2 + menu_select_w
&& mouseY >= menu_r_select_y_3 && mouseY < menu_r_select_y_3 + menu_select_h)
	draw_sprite_part_ext(spr_background,1,0,24,menu_select_w/scale,menu_select_h/scale,menu_r_select_x_2,menu_r_select_y_3,scale,scale,c_white,1);
if(mouseX >= menu_r_select_x_2 && mouseX < menu_r_select_x_2 + menu_select_w
&& mouseY >= menu_r_select_y_4 && mouseY < menu_r_select_y_4 + menu_select_h)
	draw_sprite_part_ext(spr_background,1,0,24,menu_select_w/scale,menu_select_h/scale,menu_r_select_x_2,menu_r_select_y_4,scale,scale,c_white,1);
if(mouseX >= menu_r_select_x_2 && mouseX < menu_r_select_x_2 + menu_select_w
&& mouseY >= menu_r_select_y_5 && mouseY < menu_r_select_y_5 + menu_select_h)
	draw_sprite_part_ext(spr_background,1,0,24,menu_select_w/scale,menu_select_h/scale,menu_r_select_x_2,menu_r_select_y_5,scale,scale,c_white,1);
if(mouseX >= menu_r_select_x_2 && mouseX < menu_r_select_x_2 + menu_select_w
&& mouseY >= menu_r_select_y_6 && mouseY < menu_r_select_y_6 + menu_select_h)
	draw_sprite_part_ext(spr_background,1,0,24,menu_select_w/scale,menu_select_h/scale,menu_r_select_x_2,menu_r_select_y_6,scale,scale,c_white,1);
if(mouseX >= menu_r_select_x_2 && mouseX < menu_r_select_x_2 + menu_select_w
&& mouseY >= menu_r_select_y_7 && mouseY < menu_r_select_y_7 + menu_select_h)
	draw_sprite_part_ext(spr_background,1,0,24,menu_select_w/scale,menu_select_h/scale,menu_r_select_x_2,menu_r_select_y_7,scale,scale,c_white,1);
if(mouseX >= menu_r_select_x_2 && mouseX < menu_r_select_x_2 + menu_select_w
&& mouseY >= menu_r_select_y_8 && mouseY < menu_r_select_y_8 + menu_select_h)
	draw_sprite_part_ext(spr_background,1,0,24,menu_select_w/scale,menu_select_h/scale,menu_r_select_x_2,menu_r_select_y_8,scale,scale,c_white,1);
#endregion	

// draw text
draw_set_font(font_12);
draw_text_color(txt_menu_l_x,txt_menu_l_y_1, "Body",txtColor,txtColor,txtColor,txtColor,1);
draw_text_color(txt_menu_l_x,txt_menu_l_y_2, "Hair",txtColor,txtColor,txtColor,txtColor,1);
if(manager_students.player_gender[0] == 0)
	draw_text_color(txt_menu_l_x,txt_menu_l_y_3, "Bangs",txtColor,txtColor,txtColor,txtColor,1);
else
	draw_text_color(txt_menu_l_x,txt_menu_l_y_3, "Beard",txtColor,txtColor,txtColor,txtColor,1);
draw_text_color(txt_menu_l_x,txt_menu_l_y_4, "Col 1",txtColor,txtColor,txtColor,txtColor,1);
draw_text_color(txt_menu_l_x,txt_menu_l_y_5, "Col 2",txtColor,txtColor,txtColor,txtColor,1);
//draw_text_color(txt_menu_l_x,txt_menu_1_y_0, "Gender",txtColor,txtColor,txtColor,txtColor,1);

draw_text_color(txt_menu_r_x,txt_menu_r_y_1, "Top",txtColor,txtColor,txtColor,txtColor,1);
draw_text_color(txt_menu_r_x,txt_menu_r_y_2, "Col 3",txtColor,txtColor,txtColor,txtColor,1);
draw_text_color(txt_menu_r_x,txt_menu_r_y_3, "Bottom",txtColor,txtColor,txtColor,txtColor,1);
draw_text_color(txt_menu_r_x,txt_menu_r_y_4, "Col 4",txtColor,txtColor,txtColor,txtColor,1);
draw_text_color(txt_menu_r_x,txt_menu_r_y_5, "Shoes",txtColor,txtColor,txtColor,txtColor,1);
draw_text_color(txt_menu_r_x,txt_menu_r_y_6, "Col 5",txtColor,txtColor,txtColor,txtColor,1);
draw_text_color(txt_menu_r_x,txt_menu_r_y_7, "Accessory",txtColor,txtColor,txtColor,txtColor,1);
draw_text_color(txt_menu_r_x,txt_menu_r_y_8, "Col 6",txtColor,txtColor,txtColor,txtColor,1);

draw_set_font(font_16);
draw_text_color(name_txt_x,name_txt_y,name_txt,txtColor,txtColor,txtColor,txtColor,1);

draw_text_color(finish_txt_x,finish_txt_y,"Finish",txtColor,txtColor,txtColor,txtColor,1);

draw_sprite_ext(spr_portrait_boarder_UI,1,port_x,spr_y,scale,scale,0,c_white,1);	
// draw the hair
if(manager_students.player_gender[0] == 0)
	draw_sprite_part_ext(spr,4,spr_w*spr_hair_num,spr_h*spr_hair_col_num,spr_w,spr_h,spr_x,spr_y,spr_scale,spr_scale,c_white,1);

// draw the body
draw_sprite_part_ext(spr,1,0,spr_h*spr_body_num,spr_w,spr_h,spr_x,spr_y,spr_scale,spr_scale,c_white,1);

// draw the eyes
draw_sprite_part_ext(spr,6,0,spr_h*spr_eye_num,spr_w,spr_h,spr_x,spr_y,spr_scale,spr_scale,c_white,1);

// draw the shoes
draw_sprite_part_ext(spr,16,spr_w*spr_shoe_num,spr_h*spr_shoe_col_num,spr_w,spr_h,spr_x,spr_y,spr_scale,spr_scale,c_white,1);

// draw the bottom
draw_sprite_part_ext(spr,12,spr_w*spr_bot_num,spr_h*spr_bot_col_num,spr_w,spr_h,spr_x,spr_y,spr_scale,spr_scale,c_white,1);

// draw the top
draw_sprite_part_ext(spr,8,spr_w*spr_top_num,spr_h*spr_top_col_num,spr_w,spr_h,spr_x,spr_y,spr_scale,spr_scale,c_white,1);

// draw the bangs
draw_sprite_part_ext(spr,5,spr_w*spr_bang_num,spr_h*spr_hair_col_num,spr_w,spr_h,spr_x,spr_y,spr_scale,spr_scale,c_white,1);

// draw the beard
if(manager_students.player_gender[0] == 1)
	draw_sprite_part_ext(spr,4,spr_w*spr_hair_num,spr_h*spr_hair_col_num,spr_w,spr_h,spr_x,spr_y,spr_scale,spr_scale,c_white,1);

// draw the accesory
draw_sprite_part_ext(spr,19,spr_w*spr_acc_num,spr_h*spr_acc_col_num,spr_w,spr_h,spr_x,spr_y,spr_scale,spr_scale,c_white,1);
draw_sprite_ext(spr_portrait_boarder_UI,4,port_x,spr_y,scale,scale,0,c_white,1);	

draw_sprite_ext(spr_portrait_boarder_UI,0,port_x,port_y,scale,scale,0,c_white,1);

// portrait
// hair 
draw_sprite_part_ext(port_spr,2,port_num*spr_hair_num,port_num*spr_hair_col_num,port_num,port_num,port_x,port_y,port_scl,port_scl,c_white,1);
		
//body
draw_sprite_part_ext(port_spr,1,port_num*spr_top_num,port_num*spr_body_num,port_num,port_num,port_x,port_y,port_scl,port_scl,c_white,1);
		
// face
draw_sprite_part_ext(port_spr,0,port_num*spr_body_num,0,port_num,port_num,port_x,port_y,port_scl,port_scl,c_white,1);
		
// eyes
draw_sprite_part_ext(port_spr,4,0,port_num*spr_eye_num,port_num,port_num,port_x,port_y,port_scl,port_scl,c_white,1);
		
// top
draw_sprite_part_ext(port_spr,5,port_num*spr_top_num,port_num*spr_top_col_num,port_num,port_num,port_x,port_y,port_scl,port_scl,c_white,1);
		
// bangs
draw_sprite_part_ext(port_spr,3,port_num*spr_bang_num,port_num*spr_hair_col_num,port_num,port_num,port_x,port_y,port_scl,port_scl,c_white,1);
		
// accesory
draw_sprite_part_ext(port_spr,6,port_num*spr_acc_num,port_num*spr_acc_col_num,port_num,port_num,port_x,port_y,port_scl,port_scl,c_white,1);
draw_sprite_ext(spr_portrait_boarder_UI,3,port_x,port_y,scale,scale,0,c_white,1);	

