import QtQuick 2.0

Rectangle {
    id: root
    width: 400
    height: 400
    color: "#f0f0f0"

    Column {
        id: layout
        anchors.centerIn: parent
        spacing: 12

        //Уровень батареи
        Text {
            id: batteryText
            text: "Battery level: " + Qt.binding(function() {
                return sharedViewModel.getBatteryLevel();
            }) + "%"
            font.pixelSize: 16
        }

        //Текстовое поле
        Rectangle {
            width: 300
            height: 40
            color: "white"
            border.color: "gray"
            radius: 4

            TextInput {
                id: inputField
                anchors.fill: parent
                anchors.margins: 4
                placeholderText: "Введите текст"
                text: ""
            }
        }

        Rectangle {
            width: 120
            height: 40
            color: "#007acc"
            radius: 4

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    sharedViewModel.resetText();
                    inputField.text = ""
                }
            }

            Text {
                anchors.centerIn: parent
                text: "Сбросить"
                color: "white"
            }
        }

        //Счётчик
        Text {
            id: counterText
            text: "Счётчик: " + Qt.binding(function() {
                return sharedViewModel.getCounterValue();
            })
            font.pixelSize: 16
        }

        Row {
            spacing: 8

            //Кнопка "-"
            Rectangle {
                width: 50
                height: 40
                color: "#d32f2f"
                radius: 4

                MouseArea {
                    anchors.fill: parent
                    onClicked: sharedViewModel.decCounter()
                }

                Text {
                    anchors.centerIn: parent
                    text: "-"
                    color: "white"
                    font.pixelSize: 20
                }
            }

            //Кнопка "+"
            Rectangle {
                width: 50
                height: 40
                color: "#388e3c"
                radius: 4

                MouseArea {
                    anchors.fill: parent
                    onClicked: sharedViewModel.incCounter()
                }

                Text {
                    anchors.centerIn: parent
                    text: "+"
                    color: "white"
                    font.pixelSize: 20
                }
            }
        }
    }
}
