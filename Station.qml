import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Item {
    anchors.fill: parent

    Text {
        id: stationName
        anchors {
            top: parent.top
            left: parent.left
            margins:40
        }
        color: "white"
        font.pixelSize: 50

        text: qsTr("FM 104.8")
    }

    Text {
        id: songName
        anchors {
            top: stationName.bottom
            horizontalCenter: stationName.horizontalCenter
            leftMargin: 20
        }

        color: "white"
        font.pixelSize: 26

        text: qsTr("The Beatles - Don't Let Me Down")
    }

    Image {
        anchors {
            right: parent.right
            top: songName.bottom
            margins: 40
        }

        height: 250
        width: 250

        source: "images/Beatles_Get_Back.jpg"
    }

    Button {
        id: backButton
        anchors {
            left: parent.left
            bottom: parent.bottom
            margins: 20
        }
        text: "Back"
        onClicked: mainLoader.source = "StackViewP.qml"

    }

    Button {
        id: sourceButton
        anchors {
            right: parent.right
            bottom: parent.bottom
            margins: 20
        }
        text: "Source"

    }





}

