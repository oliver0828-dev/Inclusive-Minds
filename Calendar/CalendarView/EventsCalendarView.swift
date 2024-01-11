//
//  EventsCalendarView.swift
//  Inclusive Minds (2)
//
//  Created by Oliver Park on 1/7/24.
//

import SwiftUI

struct EventsCalendarView: View {
    @EnvironmentObject var activityData: activityData
    @State private var dateSelected: DateComponents?
    @State private var displayEvents = false
    @State private var formType: ActivityFormType?
    
    var body: some View {
        NavigationStack {
            ScrollView {
                CalendarView(interval: DateInterval(start: .distantPast, end: .distantFuture),
                             activityData: activityData,
                             dateSelected: $dateSelected,
                             displayEvents: $displayEvents)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        formType = .new
                    } label: {
                        Image(systemName: "plus.circle.fill")
                            .imageScale(.medium)
                    }
                }
            }
            .sheet(item: $formType) { $0 }
            .sheet(isPresented: $displayEvents) {
                DaysEventsListView(dateSelected: $dateSelected)
                    .presentationDetents([.medium, .large])
            }
            
                .navigationTitle("Calendar")
        }
    }
}

#Preview {
    EventsCalendarView()
        .environmentObject(activityData(preview: true))
}
   
