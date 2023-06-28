/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

button_txt = "Item";

pause = false;

menu_on = false;

if(ds_list_size(manager_students.battle_items) <= 0)
	instance_destroy(id)