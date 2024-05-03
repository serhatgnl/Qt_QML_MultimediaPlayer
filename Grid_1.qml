import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Item {

    ListModel {
        id: listModel
        ListElement { name: "PLAY"; image: "images/48151.jpg"; page: "" }
        ListElement { name: "PHONE"; image: "images/preview.jpg"; page: "" }
        ListElement { name: "FM"; image: "images/49599.jpg"; page: "Station.qml" }
        ListElement { name: "CD"; image: "images/Cd.jpg"; page: "" }
        ListElement { name: "USB"; image: "images/usb-2.jpg"; page: "" }
        ListElement { name: "BLUETOOTH"; image: "images/bluetooth-2.png"; page: "" }
        ListElement { name: "TONE"; image: "images/loudspeaker.png"; page: "" }
        ListElement { name: "CONFIG"; image: "images/cog-wheels.jpg"; page: "" }


    }

    GridView {
        id: gridView
        anchors.fill: parent
        model: listModel
        cellHeight: 240
        cellWidth: 240
        delegate: Rectangle {
            id: root
            height: 200
            width: 200
            color: "white"
            radius: 10
            Image {
                anchors.fill: root
                source: image
            }

            Text {
                color: "black"
                text: name
                font.pixelSize: 20
                anchors.centerIn: parent.top
            }

            MouseArea {
                anchors.fill: parent
                onClicked: mainLoader.source = page
            }




        }
    }

    Button {
        id: nextButton
        anchors {
            right: parent.right
            bottom: parent.bottom
            margins: 20
        }
        text: "Next"
        onClicked: stackView.push("Grid_2.qml")
    }

    Button {
        id: previousButton
        anchors {
            right: nextButton.left
            rightMargin: 10
            verticalCenter: nextButton.verticalCenter
        }
        text: "Previous"
    }



}
