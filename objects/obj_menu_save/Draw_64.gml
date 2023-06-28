if(menu_on == false) exit;
if(desc_on == false) exit;

draw_sprite_ext(spr_wing_1, spr_form_1, form_x_1, form_y, scale,scale,0,c_white,1);
draw_sprite_ext(spr_ply_1, spr_form_1, form_x_1, form_y, scale,scale,0,c_white,1);

draw_sprite_ext(spr_wing_2, spr_form_1, form_x_2, form_y, scale2,scale2,0,c_white,1);
draw_sprite_ext(spr_ply_2, spr_form_1, form_x_2, form_y, scale2,scale2,0,c_white,1);

draw_sprite_ext(spr_wing_3, spr_form_1, form_x_3, form_y, scale2,scale2,0,c_white,1);
draw_sprite_ext(spr_ply_3, spr_form_1, form_x_3, form_y, scale2,scale2,0,c_white,1);

draw_set_font(font_16);
draw_text_color(txt_name_x,txt_name_y,txt_name,c_black,c_black,c_black,c_black,1);
draw_text_color(txt_phase_x,txt_phase_y,txt_phase,c_black,c_black,c_black,c_black,1);
