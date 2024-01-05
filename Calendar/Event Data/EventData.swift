//
//  EventData.swift
//  Inclusive Minds (2)
//
//  Created by Oliver Park on 1/5/24.
//

import Foundation
import SwiftUI
@MainActor
class activityData: ObservableObject {
    @Published var events = [Event]()
    @Published var preview: Bool
    @Published var changedEvent: Event?
    @Published var movedEvent: Event?

    init(preview: Bool = false) {
        self.preview = preview
        fetchEvents()
    }

    func fetchEvents() {
        if preview {
            events = Event.sampleActivity
        } else {
        }
    }

    func delete(_ event: Event) {
        if let index = events.firstIndex(where: {$0.id == event.id}) {
            changedEvent = events.remove(at: index)
        }
    }

    func add(_ event: Event) {
        events.append(event)
        changedEvent = event
    }

    func update(_ event: Event) {
        if let index = events.firstIndex(where: {$0.id == event.id}) {
            movedEvent = events[index]
            events[index].date = event.date
            events[index].note = event.note
            events[index].activityCategory = event.activityCategory
            changedEvent = event
        }
    }

}
