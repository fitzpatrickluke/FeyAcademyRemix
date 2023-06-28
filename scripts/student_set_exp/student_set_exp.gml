///@description student_set_exp
///@arg student
///@arg wings
///@arg num
function student_set_exp(argument0,argument1, argument2)
{
	var s = argument0;
	var w = argument1;
	var n = argument2;
	
	
	s.exp_curr += manager_battle_remix.unitLevel[3];
	
	s.stat_hp_curr = manager_battle_remix.unitHp_curr[n];
	s.stat_mp_curr = manager_battle_remix.unitMp_curr[n];
	
	
	if(s.exp_curr >= s.exp_next)
	{
		s = student_level_up(s,w);
		s.exp_curr = 0;
		s.exp_next = s.level*0.5*(1+s.level);
		obj_battle_textBox.levelUp_on = true;
	}
	return s;
}