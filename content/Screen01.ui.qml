/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick 6.2
import QtQuick.Controls 6.2
import NewDemoProject

Rectangle {
    id: rectangle
    width: Constants.width
    height: Constants.height
    color: "#ffffff"
    border.color: "#ffffff"

    MyMainViewRectangle {
        id: mainViewRectangle
    }

    Item {
        id: roundButtonItem
        x: 1276
        y: 175
        width: 516
        height: 108

        RoundButton {
            id: spaceRoundButton
            x: 312
            width: 182
            height: 58
            text: "Space"
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right
            autoExclusive: true
            checkable: true
            anchors.rightMargin: 40
            font.bold: true
            font.pointSize: 16
        }

        RoundButton {
            id: lagoonRoundButton
            width: 182
            height: 58
            text: "Lagoon"
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            autoExclusive: true
            checkable: true
            anchors.leftMargin: 40
            font.pointSize: 16
            font.bold: true
        }
    }

    Item {
        id: radioButtonItem
        x: 1307
        y: 354
        width: 477
        height: 200
        visible: lagoonRoundButton.checked || spaceRoundButton.checked

        Image {
            id: catPreviewImage
            y: 115
            width: 77
            height: 67
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            source: "images/cat.png"
            anchors.bottomMargin: 20
            anchors.leftMargin: 60
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: alienPreviewImage
            width: 77
            height: 67
            anchors.left: parent.left
            anchors.top: parent.top
            source: "images/alien.png"
            anchors.topMargin: 20
            anchors.leftMargin: 60
            fillMode: Image.PreserveAspectFit
        }

        RadioButton {
            id: catRadioButton
            x: 278
            y: 125
            width: 79
            height: 40
            text: qsTr("Cat")
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 35
            anchors.rightMargin: 120
            font.pointSize: 15
        }

        RadioButton {
            id: alienRadioButton
            x: 281
            text: qsTr("Alien")
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.topMargin: 35
            anchors.rightMargin: 120
            font.pointSize: 15
        }
    }

    Item {
        id: glassesItem
        x: 1307
        y: 655
        width: 477
        height: 126
        visible: lagoonRoundButton.checked || spaceRoundButton.checked

        Image {
            id: glassesPreviewImage
            y: 8
            width: 100
            height: 100
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            source: "images/sunglasses.png"
            anchors.bottomMargin: 18
            anchors.leftMargin: 54
            fillMode: Image.PreserveAspectFit
        }

        Switch {
            id: glassesSwitch
            x: 282
            y: 38
            text: qsTr("Sunglasses")
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 48
            anchors.rightMargin: 45
            font.pointSize: 15
        }
    }

}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.5}
}
##^##*/
