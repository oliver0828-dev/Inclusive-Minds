// Quiz 문제와 답변에 대한 구조체. 변경할 일 크게 없을 것 같지만, 질문이나 답변 형식이 바뀌면 수정해야함.

import Foundation

struct Question: Identifiable {
    let id = UUID()
    var text: String
    var options: [String]
    var answer: String = ""
    var isShortAnswer: Bool = false

}
