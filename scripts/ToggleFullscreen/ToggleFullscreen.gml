function ToggleFullscreen(){
	window_set_fullscreen(!window_get_fullscreen());
	if(window_get_fullscreen()) obj_Settings.fullscreen = "True";
	else obj_Settings.fullscreen = "False";
	
	if(instance_exists(obj_Menu)) SettingsMenu();
}