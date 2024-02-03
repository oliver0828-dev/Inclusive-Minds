import SwiftUI

struct Section1Quiz {
    static let questions: [Question] = [
        Question(text: "1어떤 행성이 태양에 가장 가까운가?", options: ["수성", "목성", "지구", "화성"], answer: "수성"),
        Question(text: "1물의 화학식은 무엇인가?", options: ["CO2", "H2O", "O2", "H2CO3"], answer: "H2O"),
        Question(text: "1셰익스피어의 유명한 비극은 무엇인가?", options: ["오셀로", "맥베스", "로미오와 줄리엣", "모두"], answer: "모두"),
        Question(text: "1삼각형의 내각의 합은 몇 도인가?", options: ["90도", "180도", "270도", "360도"], answer: "180도"),
        Question(text: "1'노트르담 드 파리'의 저자는 누구인가?", options: ["빅토르 위고", "샤를 보들레르", "알베르 까뮈", "장 폴 사르트르"], answer: "빅토르 위고"),
        Question(text: "1빛의 속도는 초당 몇 킬로미터인가?", options: [], answer:  "1", isShortAnswer: true),
        Question(text: "1DNA의 전체 이름은 무엇인가?", options: [], answer: "2", isShortAnswer: true),
        Question(text: "1가장 큰 숫자인 '구골'은 몇 자리 수인가?", options: [], answer:  "3", isShortAnswer: true),
        Question(text: "1'큰 술잔의 역설'은 어떤 과학자와 연관이 있는가?", options: [], answer: "4", isShortAnswer: true),
        Question(text: "1'이코노믹스'라는 용어를 만든 사람은 누구인가?", options: [], answer: "5", isShortAnswer: true)
    ]
}
