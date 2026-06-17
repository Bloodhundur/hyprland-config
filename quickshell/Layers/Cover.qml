import QtQuick
import Quickshell
import Quickshell.Wayland
import Quickshell.Io
import ".."

PanelWindow {

	id: "cover"
	anchors.top: true
	anchors.bottom: true
	anchors.left: true

	//THIS IS EXTREMELY FUCKING HACKY AND I HAVE NO IDEA HOW TO FIX THIS SHIT
	//if i do visible the bar doesnt let the cover hide everything since the bar
	//takes the space at the top left
	implicitWidth:Theme.isVisible ? 2560 : 0

	focusable: false
	Rectangle {
		id: "rect"
		anchors.fill: parent
		color: "black"
	}



 }
