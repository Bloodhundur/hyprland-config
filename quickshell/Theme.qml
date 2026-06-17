pragma Singleton

import Quickshell
import Quickshell.Io
import QtQuick

Singleton {
    id: root

    property bool isVisible: true

    IpcHandler {
        target: "root"

        function setVisible(visible: bool): void {
            root.isVisible = visible
        }

        function toggleVisible(): void {
            root.isVisible = !root.isVisible
        }
    }

    // Theme colors - Chroma Glow style (matching waybar)
    readonly property color colBg: "#1e1e2e"
    readonly property color colBgTransparent: "transparent"
    readonly property color colFg: "#cdd6f4"
    readonly property color colMuted: "#606060"
    readonly property color colClock: "#fe640b"
    readonly property color colCpu: "#7287fd"
    readonly property color colMem: "#40a02b"
    readonly property color colDisk: "#8b4513"
    readonly property color colVol: "#40a02b"
    readonly property color colNetwork: "#dd7878"
    readonly property color colBluetooth: "#89b4fa"
    readonly property color colSlack: "#611f69"
    readonly property color colWhatsapp: "#25d366"
    readonly property color colWorkspaceActive: "#D3D3D3"
    readonly property color colWorkspaceInactive: "grey"
    readonly property color colWindow: "#cba6f7"
    readonly property color colKernel: "#f38ba8"

    // Font
    readonly property string fontFamily: "JetBrainsMono Nerd Font"
    readonly property int fontSize: 15
}
