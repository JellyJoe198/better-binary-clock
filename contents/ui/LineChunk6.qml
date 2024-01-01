/*
 * 6 bit chunk of lines to represent binary numbers
 *
 * SPDX-FileCopyrightText: 2024 Lucianna from Elsewhere <something-from-elsewhere@proton.me>
 *
 * SPDX-License-Identifier: GPL-3.0-or-later
 */

import QtQuick 2.0
import org.kde.plasma.core 2.0 as PlasmaCore

Item {
    property int val

    Line {
        x:   0
        y:   0
        val: parent.val
        bit: 32
    }
    Line {
        x:   main.lineSpacing + main.lineWidth
        y:   0
        val: parent.val
        bit: 16
    }
    Line {
        x:   2 * (main.lineSpacing + main.lineWidth)
        y:   0
        val: parent.val
        bit: 8
    }
    Line {
        x:   3 * (main.lineSpacing + main.lineWidth)
        y:   0
        val: parent.val
        bit: 4
    }
    Line {
        x:   4 * (main.lineSpacing + main.lineWidth)
        y:   0
        val: parent.val
        bit: 2
    }
    Line {
        x:   5 * (main.lineSpacing + main.lineWidth)
        y:   0
        val: parent.val
        bit: 1
    }
}
