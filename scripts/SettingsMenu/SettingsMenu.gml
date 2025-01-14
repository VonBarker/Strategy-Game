function SettingsMenu(){
	Menu
		(
			room_width/8 * 3,
			room_height/3,
			[
				["Fullscreen:  " + obj_Settings.fullscreen, ToggleFullscreen],
				["Close", -1]
			],
			"Settings -",
			room_width/4,
			room_height/3
		)
}