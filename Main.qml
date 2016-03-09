import QtQuick 2.4
import Ubuntu.Components 1.1

/*!
    \brief MainView with a Label and Button elements.
*/

MainView {
    // objectName for functional testing purposes (autopilot-qt5)
    objectName: "mainView"

    // Note! applicationName needs to match the "name" field of the click manifest
    applicationName: "draganddrop.liu-xiao-guo"

    /*
     This property enables the application to change orientation
     when the device is rotated. The default is false.
    */
    //automaticOrientation: true

    // Removes the old toolbar and enables new features of the new header.
//    useDeprecatedToolbar: false

    width: units.gu(60)
    height: units.gu(85)

    Page {
        id: mainpage
        title: i18n.tr("draganddrop")

        ListModel {
            id: mymodel
            ListElement {
                image: "images/pic1.jpg"
            }
            ListElement {
                image: "images/pic2.jpg"
            }
            ListElement {
                image: "images/pic3.jpg"
            }
            ListElement {
                image: "images/pic4.jpg"
            }
        }


        Column {
            id: layout
            anchors.centerIn: parent
            spacing: units.gu(5)

            Row {
                id: bottom
                width: bottom.childrenRect.width
                height: mainpage.height/3
                anchors.horizontalCenter: parent.horizontalCenter
                spacing: units.gu(1)

                Repeater {
                    model: mymodel.count;
                    delegate: DropTile { colorKey: "red" }
                }
            }

            Row {
                id: top
                width: top.childrenRect.width
                height: mainpage.height/3
                anchors.horizontalCenter: parent.horizontalCenter
                spacing: units.gu(1)

                Repeater {
                    model: mymodel
                    delegate: DragTile { colorKey: "red" }
                }
            }

        }
    }
}

