///@description set_battle_field_effect_end
function set_battle_field_effect_end()
{
	if(obj_battle_feildElement.spr_field != -1)
	{
		obj_battle_feildElement.field_num += 1;
		if(obj_battle_feildElement.field_num > 3)
		{
			obj_battle_feildElement.field_num = 0;
			obj_battle_feildElement.spr_field = -1;
			obj_battle_feildElement.spr_element_1 = -1;
			obj_battle_feildElement.draw_on = false;
		}
	}
}