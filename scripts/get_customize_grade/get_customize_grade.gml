///@description get_customize_grade
///@arg num
function get_customize_grade(argument0)
{
	var num = argument0;
	var g = "E";
	if(num < 10)
		g = "E";
	else if(num < 15)
		g = "D";
	else if(num < 20)
		g = "C";
	else if(num < 25)
		g = "B";
	else if(num < 30)
		g = "A";
	else
		g = "S";
	
	return g;
}