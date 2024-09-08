/*
 * 6 bit chunk of lines to represent binary numbers
 *
 * SPDX-FileCopyrightText: 2024 Lucianna from Elsewhere <something-from-elsewhere@proton.me>
 * SPDX-FileCopyrightText: 2024 Joseph Brownlee <jellyjoe198@gmail.com> (I only swapped the orientation)
 *
 * SPDX-License-Identifier: GPL-3.0-or-later
 */

import QtQuick 2.0
import org.kde.plasma.core 2.0 as PlasmaCore

Item {
    property int val

    Line {
        y:   0
        x:   0
        val: parent.val
        bit: 32
    }
    Line {
        y:   main.lineSpacing + main.lineWidth
        x:   0
        val: parent.val
        bit: 16
    }
    Line {
        y:   2 * (main.lineSpacing + main.lineWidth)
        x:   0
        val: parent.val
        bit: 8
    }
    Line {
        y:   3 * (main.lineSpacing + main.lineWidth)
        x:   0
        val: parent.val
        bit: 4
    }
    Line {
        y:   4 * (main.lineSpacing + main.lineWidth)
        x:   0
        val: parent.val
        bit: 2
    }
    Line {
        y:   5 * (main.lineSpacing + main.lineWidth)
        x:   0
        val: parent.val
        bit: 1
    }
}
