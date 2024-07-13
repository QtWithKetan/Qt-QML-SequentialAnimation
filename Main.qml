import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle
    {
        id:myRect
        width: 200
        height: 200
        color: "#FF0000"
    }

    SequentialAnimation
    {
        id:mySeqAnimation
        running: true
        loops: Animation.Infinite

        NumberAnimation
        {
            target: myRect
            property: "width"
            from: 200
            to: 300
            duration: 2000
            easing.type: Easing.InOutQuad
        }

        NumberAnimation
        {
            target: myRect
            property: "height"
            from: 200
            to: 300
            duration: 2000
            easing.type: Easing.InOutQuad
        }

        NumberAnimation
        {
            target: myRect
            property: "width"
            from: 300
            to: 200
            duration: 2000
            easing.type: Easing.InOutQuad
        }

        NumberAnimation
        {
            target: myRect
            property: "height"
            from: 300
            to: 200
            duration: 2000
            easing.type: Easing.InOutQuad
        }
    }
}

