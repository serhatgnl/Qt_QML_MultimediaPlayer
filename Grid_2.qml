import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Item {

    ListModel {
        id: listModel
        ListElement { name: "WEATHER"; image: "images/very-cloudy.png"; page: "" }
        ListElement { name: "MOVIES"; image: "images/cinema.png"; page: "" }
        ListElement { name: "MESSAGES"; image: "images/mail.png"; page: "" }


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

    }

    Button {
        id: previousButton
        anchors {
            right: nextButton.left
            rightMargin: 10
            verticalCenter: nextButton.verticalCenter
        }
        text: "Previous"
        onClicked: stackView.pop()
    }



}
