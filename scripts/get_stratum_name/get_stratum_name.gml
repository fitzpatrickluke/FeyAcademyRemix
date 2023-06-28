///@description get_stratum_name
///@arg stratum
function get_stratum_name(argument0)
{
	var s = argument0;
	var t = "";
	
	switch(s)
	{
		case adventure_flowerFieldsf1:
		t = "Flower Fields"; break;
		
		case adventure_willowWoodsf1:
		t = "Willow Woods"; break;
	
		case adventure_autumnFallsf1:
		t = "Autumn Falls"; break;
	
		case adventure_snowflakePointf1:
		t = "Snowflake Point"; break;
	
		case adventure_sakuraStepsf1:
		t = "Sakura Steps"; break;

		
		case adventure_feyTemplef1:
		t = "Fey Temple";	break;

		
		case adventure_ancientAbyssf1:
		t = "Ancient Abyss"; break;

		case adventure_endRainbowf1:
		t = "End of the Rainbow"; break;
	}
	return t;
}