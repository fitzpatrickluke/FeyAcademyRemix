if(!on)
	exit;
	
draw_sprite(spr,0,0,0);

// water
if(mouseX >= element_select_x_1 && mouseX < element_select_x_1+element_select_w
&& mouseY >= element_select_y_1 && mouseY < element_select_y_1+element_select_h)
{
	draw_sprite(spr_water,spr_counter,spr_el_x_1,spr_el_y_1);
}
else if(chosen_element == element.water)
{
	draw_sprite_part(spr,spr_vib,element_select_x_1,element_select_y_1,
	element_select_w,element_select_h,element_select_x_1,element_select_y_1)
}
else
{
	draw_sprite_part(spr,spr_dul,element_select_x_1,element_select_y_1,
	element_select_w,element_select_h,element_select_x_1,element_select_y_1)
}
// earth
if(mouseX >= element_select_x_2 && mouseX < element_select_x_2+element_select_w
&& mouseY >= element_select_y_1 && mouseY < element_select_y_1+element_select_h)
{
		draw_sprite(spr_earth,spr_counter,spr_el_x_2,spr_el_y_1);
}
else if(chosen_element == element.earth)
{
	draw_sprite_part(spr,spr_vib,element_select_x_2,element_select_y_1,
	element_select_w,element_select_h,element_select_x_2,element_select_y_1)
}
else
{
	draw_sprite_part(spr,spr_dul,element_select_x_2,element_select_y_1,
	element_select_w,element_select_h,element_select_x_2,element_select_y_1)
}
// fire
if(mouseX >= element_select_x_3 && mouseX < element_select_x_3+element_select_w
&& mouseY >= element_select_y_1 && mouseY < element_select_y_1+element_select_h)
{
	draw_sprite(spr_fire,spr_counter,spr_el_x_3,spr_el_y_1);
}
else if(chosen_element == element.fire)
{
	draw_sprite_part(spr,spr_vib,element_select_x_3,element_select_y_1,
	element_select_w,element_select_h,element_select_x_3,element_select_y_1)
}
else
{
	draw_sprite_part(spr,spr_dul,element_select_x_3,element_select_y_1,
	element_select_w,element_select_h,element_select_x_3,element_select_y_1)
}
// air
if(mouseX >= element_select_x_4 && mouseX < element_select_x_4+element_select_w
&& mouseY >= element_select_y_1 && mouseY < element_select_y_1+element_select_h)
{
	draw_sprite(spr_air,spr_counter,spr_el_x_4,spr_el_y_1);
}
else if(chosen_element == element.air)
{
	draw_sprite_part(spr,spr_vib,element_select_x_4,element_select_y_1,
	element_select_w,element_select_h,element_select_x_4,element_select_y_1)
}
else
{
	draw_sprite_part(spr,spr_dul,element_select_x_4,element_select_y_1,
	element_select_w,element_select_h,element_select_x_4,element_select_y_1)
}
// nature
if(mouseX >= element_select_x_1 && mouseX < element_select_x_1+element_select_w
&& mouseY >= element_select_y_2 && mouseY < element_select_y_2+element_select_h)
{
	draw_sprite(spr_nature,spr_counter,spr_el_x_1,spr_el_y_2);
}
else if(chosen_element == element.nature)
{
	draw_sprite_part(spr,spr_vib,element_select_x_1,element_select_y_2,
	element_select_w,element_select_h,element_select_x_1,element_select_y_2)
}
else
{
	draw_sprite_part(spr,spr_dul,element_select_x_1,element_select_y_2,
	element_select_w,element_select_h,element_select_x_1,element_select_y_2)
}
// magic
if(mouseX >= element_select_x_2 && mouseX < element_select_x_2+element_select_w
&& mouseY >= element_select_y_2 && mouseY < element_select_y_2+element_select_h)
{
	draw_sprite(spr_magic,spr_counter,spr_el_x_2,spr_el_y_2);
}
else if(chosen_element == element.magic)
{
	draw_sprite_part(spr,spr_vib,element_select_x_2,element_select_y_2,
	element_select_w,element_select_h,element_select_x_2,element_select_y_2)
}
else
{
	draw_sprite_part(spr,spr_dul,element_select_x_2,element_select_y_2,
	element_select_w,element_select_h,element_select_x_2,element_select_y_2)
}
// light
if(mouseX >= element_select_x_3 && mouseX < element_select_x_3+element_select_w
&& mouseY >= element_select_y_2 && mouseY < element_select_y_2+element_select_h)
{
	draw_sprite(spr_light,spr_counter,spr_el_x_3,spr_el_y_2);
}
else if(chosen_element == element.light)
{
	draw_sprite_part(spr,spr_vib,element_select_x_3,element_select_y_2,
	element_select_w,element_select_h,element_select_x_3,element_select_y_2)
}
else
{
	draw_sprite_part(spr,spr_dul,element_select_x_3,element_select_y_2,
	element_select_w,element_select_h,element_select_x_3,element_select_y_2)
}
// dark
if(mouseX >= element_select_x_4 && mouseX < element_select_x_4+element_select_w
&& mouseY >= element_select_y_2 && mouseY < element_select_y_2+element_select_h)
{
	draw_sprite(spr_dark,spr_counter,spr_el_x_4,spr_el_y_2);
}
else if(chosen_element == element.dark)
{
	draw_sprite_part(spr,spr_vib,element_select_x_4,element_select_y_2,
	element_select_w,element_select_h,element_select_x_4,element_select_y_2)
}
else
{
	draw_sprite_part(spr,spr_dul,element_select_x_4,element_select_y_2,
	element_select_w,element_select_h,element_select_x_4,element_select_y_2)
}

// draw selection highlights
if(mouseX >= finish_select_x && mouseX < finish_select_x + finish_select_w
&& mouseY >= finish_select_y && mouseY < finish_select_y + finish_select_h)
	draw_sprite_part(spr,3,0,0,finish_select_w, finish_select_h,finish_select_x,finish_select_y);
	