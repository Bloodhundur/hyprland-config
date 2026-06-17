import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Wayland
import "../Containers/" as Con

Scope {
  Variants {
    model: Quickshell.screens

    delegate: PanelWindow {
      id: layerShell

      required property ShellScreen modelData

      anchors.left: true
      anchors.right: true
      anchors.top: true
      color: "transparent"
      exclusionMode: ExclusionMode.Auto
      focusable: false
      implicitHeight: 30
      screen: modelData
      surfaceFormat.opaque: false

      mask: Region {
        item: base
      }

      Item {
        id: base

        anchors.fill: parent
	anchors.topMargin: 12
	anchors.rightMargin: 8
	anchors.leftMargin: 8

        // radius: 5
        // color: Dat.Colors.withAlpha(Dat.Colors.background, 0.79)

        RowLayout {
          anchors.fill: parent

          Con.Left {
            Layout.fillHeight: true
            Layout.fillWidth: true
          }

          Con.Middle {
            Layout.fillHeight: true
            Layout.fillWidth: true
          }

          Con.Right {
            Layout.fillHeight: true
            Layout.fillWidth: true
          }
        }
      }

      property bool bruh: Theme.isVisible

    }
  }
}
