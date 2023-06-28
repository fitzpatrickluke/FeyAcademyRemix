///@description stringWrap
///@arg string
///@arg max_width
function string_wrap(argument0, argument1) 
{
	var str = argument0;
	var max_width = argument1;

	var str_length = string_length(str);
	var lastSpace = 1;

	var c = 1;
	var substr;

	repeat(str_length)
	{
		substr = string_copy(str, 1, c);
		if(string_char_at(str,c) == " ")
			lastSpace = c;
		if(string_width(substr) > max_width)
		{
			str = string_delete(str,lastSpace,1);
			str = string_insert("\n",str,lastSpace);
		}
		c++;
	}

	return str;
}
