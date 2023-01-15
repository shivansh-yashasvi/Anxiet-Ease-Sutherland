//
//  CalendarPage.swift
//  Anxietease
//
//  Created by Sidarth V on 18/07/21.
//

import SwiftUI

struct CalendarPage: View {
    var body: some View {
        ExampleCalendarView(
            ascVisits: Visit.mocks(
                start: .daysFromToday(-30*36),
                end: .daysFromToday(30*36)),
            initialMonth: Date())
    }
}

struct CalendarPage_Previews: PreviewProvider {
    static var previews: some View {
        CalendarPage()
    }
}
