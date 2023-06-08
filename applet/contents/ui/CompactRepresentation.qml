/*
    SPDX-FileCopyrightText: 2013-2017 Jan Grulich <jgrulich@redhat.com>

    SPDX-License-Identifier: LGPL-2.1-only OR LGPL-3.0-only OR LicenseRef-KDE-Accepted-LGPL
*/

import QtQuick 2.2

import org.kde.plasma.core 2.0 as PlasmaCore
import org.kde.plasma.components 3.0 as PlasmaComponents3
import org.kde.plasma.plasmoid 2.0

MouseArea {
    id: root

    required property bool airplaneModeAvailable
    required property string iconName

    hoverEnabled: true

    acceptedButtons: airplaneModeAvailable ? Qt.LeftButton | Qt.MiddleButton : Qt.LeftButton

    property bool wasExpanded

    onPressed: wasExpanded = mainWindow.expanded
    onClicked: {
        if (airplaneModeAvailable && mouse.button === Qt.MiddleButton) {
            Plasmoid.action("planeModeSwitch").trigger();
        } else {
            mainWindow.expanded = !wasExpanded;
        }
    }

    PlasmaCore.IconItem {
        id: connectionIcon

        anchors.fill: parent
        source: root.iconName
        colorGroup: PlasmaCore.ColorScope.colorGroup
        active: parent.containsMouse
    }
}
