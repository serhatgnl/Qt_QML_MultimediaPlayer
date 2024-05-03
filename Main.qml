import QtQuick

Window {
    id: root
    width: 1024
    height: 680
    visible: true
    title: qsTr("CarMultimediaPlayer")

    Image {
        id: backgroundImage
        anchors.fill: root
        source: "images/abstract-textured-backgound.jpg"
    }

    StatusBar {
        id: statusBar
    }

    Loader {
        id: mainLoader
        anchors {
            right: parent.right
            top: statusBar.bottom
            left: parent.left
            bottom: parent.bottom
        }

        source: "StackViewP.qml"
    }
}
