/*
 * Vertical line for representing binary numbers by height
 *
 * SPDX-FileCopyrightText: 2024 Lucianna from Elsewhere <something-from-elsewhere@proton.me>
 *
 * SPDX-License-Identifier: GPL-3.0-or-later
 */


import QtQuick 2.0

Item {
    property int val
    property int bit

    // both high and low lines
    Rectangle {
        x:          0
        y:          (val & bit) ? 0 : main.hiHeight - main.loHeight
        width:      main.lineWidth
        height:     (val & bit) ? main.hiHeight : main.loHeight
        color:      main.lineColor
    }
}
