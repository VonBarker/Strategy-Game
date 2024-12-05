function SettingsMenu(){
	Menu
		(
			room_width/12 * 5,
			room_height/3,
			[
				["Fullscreen:      " + obj_Settings.fullscreen, ToggleFullscreen],
				["Close", -1]
			],
			"Settings -",
			room_width/6,
			room_height/3
		)
}