import Foundation

class BadgeManager {
    static let shared = BadgeManager()

    func awardBadge(forSection sectionID: Int) {
        UserDefaults.standard.set(true, forKey: "Badge\(sectionID)")
    }

    func hasBadge(forSection sectionID: Int) -> Bool {
        return UserDefaults.standard.bool(forKey: "Badge\(sectionID)")
    }
}

