px = x + 8;
py = y + 8;

pr = adventure_flowerFieldsf1;
switch(room)
{
	case adventure_autumnFallsf1:
	pr = adventure_autumnFallsf2;
	break;
	case adventure_autumnFallsf2:
	pr = adventure_autumnFallsf3;
	break;
	case adventure_autumnFallsf3:
	pr = adventure_autumnFallsf4;
	break;
	
	case adventure_ancientAbyssf1:
	pr = adventure_ancientAbyssf2;
	break;
	case adventure_ancientAbyssf2:
	pr = adventure_ancientAbyssf3;
	break;
	case adventure_ancientAbyssf3:
	pr = adventure_ancientAbyssf4;
	break;
}