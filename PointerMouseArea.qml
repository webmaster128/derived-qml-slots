import QtQuick 2.0

BaseMouseArea {
    cursorShape: Qt.PointingHandCursor

    superHandleOnDoubleClicked: handleOnDoubleClicked_PointerMouseArea

    function handleOnDoubleClicked_PointerMouseArea(mouse, superImplementation) {
        console.log("Pointed at something") // I just add my comment and then call super
        handleOnDoubleClicked_BaseMouseArea(mouse)
    }
}
