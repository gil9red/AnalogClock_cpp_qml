import QtQuick 2.0

Rectangle {
    width: 25
    height: 50

    property alias value: list.currentIndex
    property int max

    Rectangle {
        anchors.fill: parent
        color: "black"

        ListView {
            id: list
            anchors.fill: parent
            highlightRangeMode: ListView.StrictlyEnforceRange
            preferredHighlightBegin: height/3
            preferredHighlightEnd: height/3
            clip: true
            model: max
            delegate: Text {
                font.pixelSize: 18;
                color: "white";
                text: index;
                anchors.horizontalCenter: parent.horizontalCenter
            }

            enabled: false // убираем возможность взаимодействия
        }
        Rectangle {
            anchors.fill: parent
            gradient: Gradient {
                GradientStop { position: 0.0; color: "#FF000000" }
                GradientStop { position: 0.2; color: "#00000000" }
                GradientStop { position: 0.8; color: "#00000000" }
                GradientStop { position: 1.0; color: "#FF000000" }
            }
        }
    }
}