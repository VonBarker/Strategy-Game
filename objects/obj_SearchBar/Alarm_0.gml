if (typingMarker == "|") {
	alarm[0] = 60;
	typingMarker = "";
}
else if (typingMarker == "" && typing) {
	alarm[0] = 30;
	typingMarker = "|";
}