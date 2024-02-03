import Foundation

struct Question: Identifiable {
    let id = UUID()
    var text: String
    var options: [String]
    var answer: String
    var isShortAnswer: Bool = false

}
