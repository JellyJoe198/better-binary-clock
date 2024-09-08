/*
 * horizontal line for representing binary numbers by height
 *
 * SPDX-FileCopyrightText: 2024 Lucianna from Elsewhere <something-from-elsewhere@proton.me>
 * SPDX-FileCopyrightText: 2024 Joseph Brownlee <jellyjoe198@gmail.com> (I only swapped the orientation)
 *
 * SPDX-License-Identifier: GPL-3.0-or-later
 */


import QtQuick 2.0

Item {
    property int val
    property int bit

    // both high and low lines
    Rectangle {
        y:          0
        x:          0 //(val & bit) ? 0 : main.hiHeight - main.loHeight
        height:     main.lineWidth
        width:      (val & bit) ? main.hiHeight : main.loHeight
        color:      main.lineColor
    }
}
