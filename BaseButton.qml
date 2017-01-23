import QtQuick 2.0
import QtQuick.Controls 1.4

Button {
    property var handleOnClicked: superHandleOnClicked

    // "super" from the instance's perspective. Use this in implementations of handleOnDoubleClicked
    property var superHandleOnClicked: handleOnClicked_BaseButton

    function handleOnClicked_BaseButton() {
        console.log("BaseButton clicked.")
    }

    onClicked: handleOnClicked()
}
