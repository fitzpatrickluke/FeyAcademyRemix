if(!gate_on)
	exit;

draw_sprite_ext(spr,0,0,0,scale,scale,0,c_white,1);
draw_sprite_ext(spr_sub,0,stratum_pic_x,stratum_pic_y,scale,scale,0,c_white,1);

// Flower Feilds
if(mouseX >= stratum_x && mouseX < stratum_x + stratum_w
&& mouseY >= stratum_y_1 && mouseY < stratum_y_1 + stratum_h)
{
	draw_sprite_part_ext(spr,1,0,0,64,16,stratum_x,stratum_y_1,scale,scale,c_white,1);
	draw_sprite_ext(spr_sub,1,stratum_pic_x,stratum_pic_y,scale,scale,0,c_white,1);
}
// Willow Woods
else if(mouseX >= stratum_x && mouseX < stratum_x + stratum_w
&& mouseY >= stratum_y_2 && mouseY < stratum_y_2 + stratum_h)
{
	draw_sprite_part_ext(spr,1,0,0,64,16,stratum_x,stratum_y_2,scale,scale,c_white,1);
	draw_sprite_ext(spr_sub,2,stratum_pic_x,stratum_pic_y,scale,scale,0,c_white,1);
}
// Autumn Falls
else if(mouseX >= stratum_x && mouseX < stratum_x + stratum_w
&& mouseY >= stratum_y_3 && mouseY < stratum_y_3 + stratum_h)
{
	draw_sprite_part_ext(spr,1,0,0,64,16,stratum_x,stratum_y_3,scale,scale,c_white,1);
	draw_sprite_ext(spr_sub,3,stratum_pic_x,stratum_pic_y,scale,scale,0,c_white,1);
}
// Snowflake Point
else if(mouseX >= stratum_x && mouseX < stratum_x + stratum_w
&& mouseY >= stratum_y_4 && mouseY < stratum_y_4 + stratum_h)
{
	draw_sprite_part_ext(spr,1,0,0,64,16,stratum_x,stratum_y_4,scale,scale,c_white,1);
	draw_sprite_ext(spr_sub,4,stratum_pic_x,stratum_pic_y,scale,scale,0,c_white,1);
}
// Sakura Steps
else if(mouseX >= stratum_x && mouseX < stratum_x + stratum_w
&& mouseY >= stratum_y_5 && mouseY < stratum_y_5 + stratum_h)
{
	draw_sprite_part_ext(spr,1,0,0,64,16,stratum_x,stratum_y_5,scale,scale,c_white,1);
	draw_sprite_ext(spr_sub,5,stratum_pic_x,stratum_pic_y,scale,scale,0,c_white,1);
}
// Fey Temple
else if(mouseX >= stratum_x && mouseX < stratum_x + stratum_w
&& mouseY >= stratum_y_6 && mouseY < stratum_y_6 + stratum_h)
{
	draw_sprite_part_ext(spr,1,0,0,64,16,stratum_x,stratum_y_6,scale,scale,c_white,1);
	draw_sprite_ext(spr_sub,6,stratum_pic_x,stratum_pic_y,scale,scale,0,c_white,1);
}
// Ancient Abyss
else if(mouseX >= stratum_x && mouseX < stratum_x + stratum_w
&& mouseY >= stratum_y_7 && mouseY < stratum_y_7 + stratum_h)
{
	draw_sprite_part_ext(spr,1,0,0,64,16,stratum_x,stratum_y_7,scale,scale,c_white,1);
	draw_sprite_ext(spr_sub,7,stratum_pic_x,stratum_pic_y,scale,scale,0,c_white,1);
}
// End of the Rainbow
else if(mouseX >= stratum_x && mouseX < stratum_x + stratum_w
&& mouseY >= stratum_y_8 && mouseY < stratum_y_8 + stratum_h)
{
	draw_sprite_part_ext(spr,1,0,0,64,16,stratum_x,stratum_y_8,scale,scale,c_white,1);
	draw_sprite_ext(spr_sub,8,stratum_pic_x,stratum_pic_y,scale,scale,0,c_white,1);
}


draw_set_font(font_16)
draw_text_color(txt_x,txt_y_1,"Flower Fields",txtCol,txtCol,txtCol,txtCol,1);
draw_text_color(txt_x,txt_y_2,"Willow Woods",txtCol,txtCol,txtCol,txtCol,1);
draw_text_color(txt_x,txt_y_3,"Autumn Falls",txtCol,txtCol,txtCol,txtCol,1);
draw_text_color(txt_x,txt_y_4,"Snowflake Point",txtCol,txtCol,txtCol,txtCol,1);
draw_text_color(txt_x,txt_y_5,"Sakura Steps",txtCol,txtCol,txtCol,txtCol,1);
draw_text_color(txt_x,txt_y_6,"Fey Temple",txtCol,txtCol,txtCol,txtCol,1);
draw_text_color(txt_x,txt_y_7,"Ancient Abyss",txtCol,txtCol,txtCol,txtCol,1);
draw_text_color(txt_x,txt_y_8,"End of the Rainbow",txtCol,txtCol,txtCol,txtCol,1);
