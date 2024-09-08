/*
 * Partial Rewrite of the original KDE 5/Plasma Binary Clock, with improved readability and the ability to fit comfortably in a sidebar. Based on "the best way to count" on youtube
 *
 * SPDX-FileCopyrightText: 2023 Lucianna from Elswhere <something-from-elsewhere@proton.me>
 * SPDX-FileCopyrightText: 2024 Joseph Brownlee <jellyjoe198@gmail.com>
 *
 * Loosely based on BinaryClock.qml:
 * SPDX-FileCopyrightText: 2014 Joseph Wenninger <jowenn@kde.org>
 * SPDX-FileCopyrightText: 2018 Piotr Kąkol <piotrkakol@protonmail.com>
 *
 * SPDX-License-Identifier: GPL-3.0-or-later
 */


import QtQuick 2.0
import QtQuick.Layouts 1.1
import org.kde.plasma.core 2.0 as PlasmaCore


Item {
    id: main

    Layout.minimumWidth: lineWidth * 8
    Layout.maximumWidth: Infinity
    Layout.preferredWidth: Layout.minimumWidth

    Layout.minimumHeight: lineWidth * 2 * (lines + 1)
    Layout.maximumHeight: Infinity
    Layout.preferredHeight: Layout.minimumHeight

    readonly property bool showSeconds: root.showSeconds

    readonly property int hours: root.hours
    readonly property int minutes: root.minutes
    readonly property int seconds: root.seconds

    readonly property int lines: showSeconds ? 17 : 11

    readonly property int lineWidth: plasmoid.configuration.useCustomLineWidth ? plasmoid.configuration.customLineWidth : 2
    readonly property int loHeight: plasmoid.configuration.useCustomLowHeight ? plasmoid.configuration.customLowHeight : lineWidth * 2
    readonly property int hiHeight: plasmoid.configuration.useCustomHighHeight ? plasmoid.configuration.customHighHeight : width - 5

    readonly property color lineColor: plasmoid.configuration.useCustomColor ? plasmoid.configuration.customColor : PlasmaCore.Theme.textColor

    readonly property int lineSpacing: (height - lineWidth * lines) / (lines + 2)
    readonly property real displayTop: width - hiHeight - 3
    readonly property real displayLeft: height - lineWidth * lines - lineSpacing * (lines + 2)

    property bool wasExpanded: false

    // MouseArea {
    //     id: mouseArea
    //     Layout.alignment: parent
    //     hoverEnabled: true
    //     onPressed: wasExpanded = plasmoid.expanded
    //     onClicked: plasmoid.expanded = !wasExpanded
    // }


    // hours
    LineChunk5 {
        x: displayLeft
        y: displayTop
        val: hours
    }

    // minutes
    LineChunk6 {
        x: displayLeft
        y: displayTop + (lineWidth * 5) + (lineSpacing * 6)
        val: minutes
    }

    // seconds
    LineChunk6 {
        x: displayLeft
        y: displayTop + (lineWidth * 11) + (lineSpacing * 13)
        val: seconds
        visible: showSeconds
    }

    // }


}
