///@description set_boss_side
///@arg id
function set_boss_side(argument0)
{
	if(manager_students.curr_phase <= phase.phase_aa)
		instance_destroy(argument0);
}