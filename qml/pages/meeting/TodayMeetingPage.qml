import QtQuick 2.4
import Ubuntu.Components 1.3
import Ubuntu.Components.Popups 1.3
import Ubuntu.Components.Pickers 1.3
import Ubuntu.Layouts 1.0

import U1db 1.0 as U1db

/* replace the 'incomplete' QML API U1db with the low-level QtQuick API */
import QtQuick.LocalStorage 2.0
import Ubuntu.Components.ListItems 1.3 as ListItem

/* note: alias name must have first letter in upperCase */
import "../../js/utility.js" as Utility
import "../../js/storage.js" as Storage

/* import folder */
import "../person"

//----------------- Today Meeting -----------------
Page {
     id: todayMeetingPage
     anchors.fill: parent

     header: PageHeader {
        id: todayMeetingPageHeader
        title: i18n.tr("Today Meeting")+ ": " + todayMeetingModel.count
     }

     Layouts {
         id: layoutTodayMeetingPage
         anchors.fill: parent
         layouts:[

             ConditionalLayout {
                 name: "layoutTodayMeeting"
                 when: root.width > units.gu(120)
                 TodayMeetingTablet{}
             }
         ]
         //else
         TodayMeetingPhone{}
     }
 }
