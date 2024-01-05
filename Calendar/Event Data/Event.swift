//
//  Event.swift
//  Inclusive Minds (2)
//
//  Created by Oliver Park on 1/5/24.
//

import Foundation

struct Event: Identifiable {
    enum ActivityCategory: String, Identifiable, CaseIterable {
            case learnAndReflect
            case communityEngagement
            case personalGrowth
            case collaborativeProjects
            case miscellaneous
        var id: String {
            self.rawValue
        }

        var icon: String {
            switch self {
            case .learnAndReflect:
                return "📖"
            case .communityEngagement:
                return "🤝"
            case .personalGrowth:
                return "🌱"
            case .collaborativeProjects:
                return "👥"
            case .miscellaneous:
                return "🔖"
            }
        }
    }

    var activityCategory: ActivityCategory
    var date: Date
    var note: String
    var id: String
    
    var dateComponents: DateComponents {
        var dateComponents = Calendar.current.dateComponents(
            [.month,
             .day,
             .year,
             .hour,
             .minute],
            from: date)
        dateComponents.timeZone = TimeZone.current
        dateComponents.calendar = Calendar(identifier: .gregorian)
        return dateComponents
    }

    init(id: String = UUID().uuidString, activityCategory: ActivityCategory = .miscellaneous, date: Date, note: String) {
        self.activityCategory = activityCategory
        self.date = date
        self.note = note
        self.id = id
    }

    
    static var sampleActivity: [Event] {
        return [
            Event(activityCategory: .learnAndReflect, date: Date().diff(numDays: 0), note: "Watch video about microaggression"),
            Event(activityCategory: .collaborativeProjects, date: Date().diff(numDays: 6), note: "Work on the discussion resource w/ Jake")
        ]
    }
}

extension Date {
    func diff(numDays: Int) -> Date {
        Calendar.current.date(byAdding: .day, value: numDays, to: self)!
    }
    
    var startOfDay: Date {
        Calendar.current.startOfDay(for: self)
    }
}
