import QtQuick 2.0

Item {
    id: root
    property color indecatorNormalColor: "red"
    property color indecatorPressedColor: "green"

    property int indecatorNormalWidth: 10
    property int indecatorHoveredWidth: 25
    property int indecatorPressedWidth: 30

    property int rootHeigh: 0

    property string source: ""



    Rectangle {
        id:body
        color: "White"

        implicitWidth: indecator.implicitWidth + text.implicitWidth
        implicitHeight: rootHeigh = indecator.implicitHeight + text.implicitHeight

        Rectangle{
            id: indecator
            color: root.indecatorNormalColor
            width: root.indecatorNormalWidth
            height: text.height * 2
            anchors.verticalCenter: parent.verticalCenter

        }
        Text {
            id: text
            text: qsTr(source)
            font.pixelSize: 16
            anchors.left: indecator.right
            anchors.leftMargin: 5
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter

        }
        MouseArea {
            id: area
            anchors.fill: parent
            hoverEnabled: true

            onEntered: {
                indecator.width = root.indecatorHoveredWidth
            }

            onExited:  {
                indecator.width = root.indecatorNormalWidth
            }

            onPressed: {
                indecator.width = root.indecatorPressedWidth
                indecator.color = root.indecatorPressedColor
            }

            onReleased: {
                indecator.width = root.indecatorHoveredWidth
                indecator.color =root.indecatorNormalColor
            }
        }
    }

}
