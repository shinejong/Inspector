import QtQuick 2.12
import App 1.0
import hcmusic.plot 1.0
import Algo 1.0
import MyCanvas 1.0

SubWindow {

    property var signalSource       ///< raw jsarray or buffered signal source
    

    MyCanvas {
        anchors.centerIn: parent
        width: 640
        height: 480
        buffer: signalSource
    }



    function getArray() {
        let arr;
        if(signalSource && signalSource.array)
            arr = signalSource.array
        if(signalSource && Array.isArray(signalSource))
            arr = signalSource
        return arr
    }
}