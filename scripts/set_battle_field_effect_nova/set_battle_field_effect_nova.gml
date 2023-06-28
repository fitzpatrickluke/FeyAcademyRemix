///@description set_battle_field_effect_nova
///@arg dmg
function set_battle_field_effect_nova(argument0)
{
	var dmg = argument0;
	if(obj_battle_feildElement.spr_field == fieldElement.nova)
	{
		obj_battle_feildElement.field_num = 0;
		obj_battle_feildElement.spr_field = -1;
		obj_battle_feildElement.spr_element_1 = -1;
		obj_battle_feildElement.draw_on = false;
		obj_battle_feildElement.nova_on = true;
		return (dmg*2);
	}
	else
		return dmg;
}