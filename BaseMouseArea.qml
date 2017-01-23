import QtQuick 2.0

MouseArea {
    anchors.fill: parent

    property var handleOnDoubleClicked: superHandleOnDoubleClicked

    // "super" from the instance's perspective. Use this in implementations of handleOnDoubleClicked
    property var superHandleOnDoubleClicked: handleOnDoubleClicked_BaseMouseArea

    function handleOnDoubleClicked_BaseMouseArea(mouse) {
        console.log("BaseMouseArea clicked", mouse.x, mouse.y, ".")
    }

    onDoubleClicked: handleOnDoubleClicked(mouse)
}
