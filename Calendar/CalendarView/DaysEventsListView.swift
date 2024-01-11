//
//  CalendarView.swift
//  Inclusive Minds (2)
//
//  Created by Oliver Park on 1/7/24.
//

import SwiftUI

struct DaysEventsListView: View {
    @EnvironmentObject var activityData: activityData
    @Binding var dateSelected: DateComponents?
    @State private var formType: ActivityFormType?
    
    var body: some View {
        NavigationStack {
            Group {
                if let dateSelected {
                    let foundEvents = activityData.events
                        .filter {$0.date.startOfDay == dateSelected.date!.startOfDay}
                    List {
                        ForEach(foundEvents) { event in
                            ListViewRow(event: event, formType: $formType)
                                .swipeActions {
                                    Button(role: .destructive) {
                                        activityData.delete(event)
                                    } label: {
                                        Image(systemName: "trash")
                                    }
                                }
                                .sheet(item: $formType) { $0 }
                        }
                    }
                }
            }
            .navigationTitle(dateSelected?.date?.formatted(date: .long, time: .omitted) ?? "")
        }
    }
}


struct DaysEventsListView_Previews: PreviewProvider {
    static var dateComponents: DateComponents {
        var dateComponents = Calendar.current.dateComponents(
            [.month,
             .day,
             .year,
             .hour,
             .minute],
            from: Date())
        dateComponents.timeZone = TimeZone.current
        dateComponents.calendar = Calendar(identifier: .gregorian)
        return dateComponents
    }
    static var previews: some View {
        DaysEventsListView(dateSelected: .constant(dateComponents))
            .environmentObject(activityData(preview: true)
            )
    }
}
