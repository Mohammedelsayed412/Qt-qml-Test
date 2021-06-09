import QtQuick 2.12
import QtQuick.Window 2.12
//import QtQuick.Layouts 1.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")


    Column {
        id: cloumn
        x: parent.width / 42
        y: parent.height / 1.5

        Button{
            id: playButton
            source: "Play"
            height: rootHeigh * 2
            width: 50
        }

        Button{
            id: settingButton
            source: "Settings"
            height: rootHeigh*2
            width: 20

        }

        Button{
            id: quitButton
            source: "Quit"
            height: rootHeigh*2
            width: 20

        }

    }
}
