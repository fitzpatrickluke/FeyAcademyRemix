if(!menu_on) exit;

if (position_meeting(mouse_x, mouse_y, id))
    mouse_on = true;
else
	mouse_on = false;


if(spell_wings)
{
	if(mouse_check_button(mb_left))
		set_battle_button_spell_wings(id,spell_wings_num)
}