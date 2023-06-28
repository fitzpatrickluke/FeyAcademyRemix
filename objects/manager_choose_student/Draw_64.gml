if(!on)
	exit;

// draw sprites
draw_sprite(spr_background,0,0,0);

// draw overlay shadow
draw_sprite(spr_background,1,0,0);

// draw overlay select
if((mouseX >= select_student_x_1 && 
mouseX < select_student_x_1 + select_student_w
&& mouseY >= select_student_y_1 && mouseY < select_student_y_1 + select_student_h)
&& !selected_custom)
draw_sprite_part(spr_background,2,
draw_student_x_1, draw_student_y_1,draw_student_w,draw_student_h,
draw_student_x_1,draw_student_y_1);

if(selected_custom)
{
	draw_sprite_part(spr_background,4,0,80,80,80,draw_student_x_1,draw_student_y_1);
	draw_student_portrait(draw_student_x_1,draw_student_y_1,0.25);
	switch(manager_choose_element.chosen_element)
	{
		case element.water:
		draw_sprite_part(spr_background,4,80,0,80,80,draw_student_x_1,draw_student_y_1);
		break;
		case element.earth:
		draw_sprite_part(spr_background,4,80,80,80,80,draw_student_x_1,draw_student_y_1);
		break;
		case element.fire:
		draw_sprite_part(spr_background,4,80,160,80,80,draw_student_x_1,draw_student_y_1);
		break;
		case element.air:
		draw_sprite_part(spr_background,4,80,240,80,80,draw_student_x_1,draw_student_y_1);
		break;
		case element.nature:
		draw_sprite_part(spr_background,4,80,320,80,80,draw_student_x_1,draw_student_y_1);
		break;
		case element.magic:
		draw_sprite_part(spr_background,4,80,400,80,80,draw_student_x_1,draw_student_y_1);
		break;
		case element.light:
		draw_sprite_part(spr_background,4,80,480,80,80,draw_student_x_1,draw_student_y_1);
		break;
		case element.dark:
		draw_sprite_part(spr_background,4,160,0,80,80,draw_student_x_1,draw_student_y_1);
		break;
	}
	
}

	
for(var i = 1; i < 7; i+=1)
{
	if((mouseX >= select_student_x_1+select_student_w*i && 
	mouseX < select_student_x_1 + select_student_w*i + select_student_w
	&& mouseY >= select_student_y_1 && mouseY < select_student_y_1 + select_student_h)
	|| select_student_grid[0,i-1] != 0)
	{
	draw_sprite_part(spr_background,2,
	draw_student_x_1+draw_student_w*i,draw_student_y_1,draw_student_w,draw_student_h,
	draw_student_x_1+draw_student_w*i,draw_student_y_1);
	if(select_student_grid[0,i-1] == 2)
	draw_sprite_part(spr_background,5,
	draw_student_x_1+draw_student_w*i,draw_student_y_1,draw_student_w,draw_student_h,
	draw_student_x_1+draw_student_w*i,draw_student_y_1);
	}
}
for(var j = 1; j < 4; j+=1)
{
for(var i = 0; i < 6; i+=1)
{
	if((mouseX >= select_student_x_2+select_student_w*i && 
	mouseX < select_student_x_2 + select_student_w*i + select_student_w
	&& mouseY >= select_student_y_1 + select_student_h*j
	&& mouseY < select_student_y_1 + select_student_h*j + select_student_h)
	|| select_student_grid[j,i] != 0)
	{
	draw_sprite_part(spr_background,2,
	draw_student_x_2+draw_student_w*i,draw_student_y_1+draw_student_h*j,
	draw_student_w,draw_student_h,
	draw_student_x_2+draw_student_w*i,draw_student_y_1+draw_student_h*j);
	if(select_student_grid[j,i] == 2)
	draw_sprite_part(spr_background,5,
	draw_student_x_2+draw_student_w*i,draw_student_y_1+draw_student_h*j,
	draw_student_w,draw_student_h,
	draw_student_x_2+draw_student_w*i,draw_student_y_1+draw_student_h*j);
	}
}
}
for(var i = 0; i < 6; i+=1)
{
	if((mouseX >= select_student_x_2+select_student_w*i && 
	mouseX < select_student_x_2 + select_student_w*i + select_student_w
	&& mouseY >= select_student_y_2 && mouseY < select_student_y_2 + select_student_h)
	|| select_student_grid[4,i] != 0)
	{
	draw_sprite_part(spr_background,2,
	draw_student_x_2+draw_student_w*i,draw_student_y_2,draw_student_w,draw_student_h,
	draw_student_x_2+draw_student_w*i,draw_student_y_2);
	if(select_student_grid[4,i] == 2)
	draw_sprite_part(spr_background,5,
	draw_student_x_2+draw_student_w*i,draw_student_y_2,draw_student_w,draw_student_h,
	draw_student_x_2+draw_student_w*i,draw_student_y_2);
	}
}




// draw selection highlights
if(mouseX >= finish_select_x && mouseX < finish_select_x + finish_select_w
&& mouseY >= finish_select_y && mouseY < finish_select_y + finish_select_h)
	draw_sprite_part(spr_background,3,0,0,finish_select_w*scale, finish_select_h*scale,finish_select_x*scale,finish_select_y*scale);

// draw the text
draw_set_font(font_16);
draw_text_color(txt_finish_x,txt_finish_y,"Finish",txtCol,txtCol,txtCol,txtCol,1);