/*
 *  SPDX-FileCopyrightText: 2024 Lucianna from Elswhere <something-from-elsewhere@proton.me>
 *
 *  Based on binary-clock configGeneral.qml:
 *  SPDX-FileCopyrightText: 2014 Joseph Wenninger <jowenn@kde.org>
 *  SPDX-FileCopyrightText: 2018 Piotr Kąkol <piotrkakol@protonmail.com>
 *
 *  Based on analog-clock configGeneral.qml:
 *  SPDX-FileCopyrightText: 2013 David Edmundson <davidedmundson@kde.org>
 *
 *  SPDX-License-Identifier: GPL-3.0-or-later
 */

import QtQuick 2.0
import QtQuick.Controls 2.5 as QtControls
import QtQuick.Layouts 1.1
import org.kde.kquickcontrols 2.0 as KQuickControls
import org.kde.kirigami 2.5 as Kirigami

Kirigami.FormLayout {
    id: generalConfigPage
    anchors.left: parent.left
    anchors.right: parent.right

    property alias cfg_showSeconds: showSeconds.checked
    property alias cfg_useCustomColor: useCustomColor.checked
    property alias cfg_customColor: customColor.color
    property alias cfg_useCustomLowHeight: useCustomLowHeight.checked
    property alias cfg_customLowHeight: customLowHeight.value
    property alias cfg_useCustomHighHeight: useCustomHighHeight.checked
    property alias cfg_customHighHeight: customHighHeight.value
    property alias cfg_useCustomLineWidth: useCustomLineWidth.checked
    property alias cfg_customLineWidth: customLineWidth.value

        QtControls.CheckBox {
            id: showSeconds
            text: i18nc("@option:check", "Seconds")
        }


        Item {
            Kirigami.FormData.isSection:true
        }

        RowLayout {
            QtControls.CheckBox {
                id: useCustomColor
                text: i18nc("@option:check", "Use custom color for lines")
            }

            KQuickControls.ColorButton {
                id: customColor
                enabled: useCustomColor.checked
            }
        }

        RowLayout {
            QtControls.CheckBox {
                id: useCustomLowHeight
                text: i18nc("@option:check", "Use custom height for \"low\" lines")
            }
            QtControls.SpinBox {
                id: customLowHeight
                enabled: useCustomLowHeight.checked
            }
        }
        RowLayout {
            QtControls.CheckBox {
                id: useCustomHighHeight
                text: i18nc("@option:check", "Use custom height for \"high\" lines")
            }
            QtControls.SpinBox {
                id: customHighHeight
                enabled: useCustomHighHeight.checked
            }
        }
        RowLayout {
            QtControls.CheckBox {
                id: useCustomLineWidth
                text: i18nc("@option:check", "Use custom line width")
            }
            QtControls.SpinBox {
                id: customLineWidth
                enabled: useCustomLineWidth.checked
            }
        }
}
