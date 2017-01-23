import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Controls 1.4

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Column {
        anchors.fill: parent
        spacing: 10

        BaseButton {
            text: "Button 1"
        }

        BaseButton {
            text: "Button 2"
            handleOnClicked: function() {
                console.log("Custom click handler")
            }
        }

        BaseButton {
            text: "Button 3"
            handleOnClicked: function() {
                console.log("Custom click handler")
                superHandleOnClicked()
            }
        }

        Rectangle {
            width: 100
            height: 40
            color: "green"
            BaseMouseArea {
            }
        }

        Rectangle {
            width: 100
            height: 40
            color: "green"
            BaseMouseArea {
                handleOnDoubleClicked: function(mouse) {
                    console.log("Custom click handler", mouse.x, mouse.y)
                }
            }
        }

        Rectangle {
            width: 100
            height: 40
            color: "green"
            BaseMouseArea {
                handleOnDoubleClicked: function(mouse) {
                    console.log("Custom click handler", mouse.x, mouse.y)
                    superHandleOnDoubleClicked(mouse)
                }
            }
        }

        Rectangle {
            width: 100
            height: 40
            color: "blue"
            PointerMouseArea {
            }
        }

        Rectangle {
            width: 100
            height: 40
            color: "blue"
            PointerMouseArea {
                handleOnDoubleClicked: function(mouse) {
                    console.log("Don't tell father and grandfather", mouse.x, mouse.y)
                }
            }
        }

        Rectangle {
            width: 100
            height: 40
            color: "blue"
            PointerMouseArea {
                handleOnDoubleClicked: function(mouse) {
                    console.log("Tell father and grandfather", mouse.x, mouse.y)
                    superHandleOnDoubleClicked(mouse)
                }
            }
        }
    }
}
