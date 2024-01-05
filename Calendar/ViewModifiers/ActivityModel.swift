//
//  ActivityModel.swift
//  Inclusive Minds (2)
//
//  Created by Oliver Park on 1/5/24.
//

import Foundation

class ActivityModel: ObservableObject{
    @Published var date = Date()
    @Published var note = ""
    @Published var activityCategory: Event.ActivityCategory = .miscellaneous

    var id: String?
    var updating: Bool { id != nil }

    init() {}

    init(_ event: Event) {
        date = event.date
        note = event.note
        activityCategory = event.activityCategory
        id = event.id
    }

    var incomplete: Bool {
        note.isEmpty
    }
}
