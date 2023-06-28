if(menu_on == false) exit;


for(var i = 0; i < 6; i+=1)
{
	if(mouse_x >= x && mouse_x <= mouse_x+click_w &&
	mouse_y >= click_y + i*click_h && mouse_y < click_y+(i+1)*click_h
	&& spells_heal[i] != -1)
		spr_num[i] = 1;
	else
		spr_num[i] = 0;
}
if(mouse_check_button(mb_left))
{
if(mouse_x >= x && mouse_x <= x+click_w)
{
for(var i = 0; i < 6; i+=1)
{
	if(mouse_y >= click_y + i*click_h && mouse_y < click_y+(i+1)*click_h
	&& spells_heal[i] != -1)
	{
		obj_menu_title.healing_curr = true;
		menu_on = false;
		obj_menu_title.heal_spell = spells_heal[i];
	}
}
}
}