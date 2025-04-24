function SettingsMenu(){
	Menu
		(
			room_width/8 * 3,
			room_height/3,
			[
				["FULLSCREEN:  " + obj_Settings.fullscreen, ToggleFullscreen],
				["CLOSE", -1]
			],
			"SETTINGS -",
			room_width/4,
			room_height/3
		)
}