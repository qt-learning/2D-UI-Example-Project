import QtQuick 6.2
import QtQuick.Controls 6.2
import NewDemoProject

Rectangle {
    id: mainViewRectangle
    width: 1100
    height: 668
    color: "#dbd4d4"
    radius: 10
    anchors.verticalCenter: parent.verticalCenter
    anchors.left: parent.left
    state: "default"
    anchors.leftMargin: 100

    Image {
        id: image
        anchors.fill: parent
        source: "qrc:/qtquickplugin/images/template_image.png"
        anchors.rightMargin: 20
        anchors.leftMargin: 20
        anchors.bottomMargin: 20
        anchors.topMargin: 20
        fillMode: Image.PreserveAspectFit

        Image {
            id: suitImage
            x: 263
            y: 249
            width: 100
            height: 100
            source: "qrc:/qtquickplugin/images/template_image.png"
            rotation: rotationSlider.value
            scale: zoomSlider.value
            fillMode: Image.PreserveAspectFit

            Image {
                id: alienImage
                x: 90
                y: 27
                width: 47
                height: 34
                visible: alienRadioButton.checked
                source: "../../../Assets/images/heads/alien.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: catImage
                x: 86
                y: 21
                width: 58
                height: 42
                visible: catRadioButton.checked
                source: "../../../Assets/images/heads/cat.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: glassesImage
                x: 79
                y: 21
                width: 65
                height: 49
                visible: glassesSwitch.checked
                source: "images/sunglasses.png"
                fillMode: Image.PreserveAspectFit
            }
        }

        Slider {
            id: zoomSlider
            x: 8
            y: 33
            to: 2
            value: 1
        }

        Slider {
            id: rotationSlider
            x: 8
            y: 79
            value: 0
            to: 360
            from: -360
        }
    }
    states: [
        State {
            name: "Lagoon"
            when: lagoonRoundButton.checked

            PropertyChanges {
                target: suitImage
                x: 165
                y: 109
                width: 248
                height: 264
                source: "images/diver.png"
            }

            PropertyChanges {
                target: alienImage
                source: "images/alien.png"
            }

            PropertyChanges {
                target: catImage
                source: "images/cat.png"
            }

            PropertyChanges {
                target: image
                source: "images/lagoon.jpg"
            }
        },
        State {
            name: "Space"
            when: spaceRoundButton.checked

            PropertyChanges {
                target: suitImage
                x: 317
                y: 237
                width: 258
                height: 257
                source: "images/spacesuit.png"
            }

            PropertyChanges {
                target: image
                source: "images/planet.png"
            }

            PropertyChanges {
                target: alienImage
                source: "images/alien.png"
            }

            PropertyChanges {
                target: catImage
                source: "images/cat.png"
            }
        },
        State {
            name: "default"
            when: !lagoonRoundButton.checked && spaceRoundButton.checked
        }
    ]
}
