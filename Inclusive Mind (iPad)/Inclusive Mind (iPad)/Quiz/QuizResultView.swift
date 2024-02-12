import SwiftUI

struct QuizResultView: View {
    let score: Int
    let total: Int
    let sectionID: Int
    @Binding var selectedSection: Int?
    @Binding var currentQuestionIndex: Int
    @Binding var shortAnswers: [Int: String]
    @Binding var selectedAnswers: [Int: String]

    init(score: Int, total: Int, sectionID: Int, selectedSection: Binding<Int?>, currentQuestionIndex: Binding<Int>, shortAnswers: Binding<[Int: String]>, selectedAnswers: Binding<[Int: String]>) {
        self.score = score
        self.total = total
        self.sectionID = sectionID
        self._selectedSection = selectedSection
        self._currentQuestionIndex = currentQuestionIndex
        self._shortAnswers = shortAnswers
        self._selectedAnswers = selectedAnswers

        if score >= 8 {
            BadgeManager.shared.awardBadge(forSection: sectionID)
        }
    }

    var body: some View {
        VStack {
            Text("Quiz Completed!")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text("Your Score: \(score)/\(total)")
                .font(.title)
            
          if score >= 8 {
              let badgeName = "Badge\(sectionID + 1)"
              Image(badgeName)
                  .resizable()
                  .scaledToFit()
                  .frame(width: 250, height: 250)
                  .padding(.top, 20)
                  .onAppear {
                      print("Loading badge image: \(badgeName)")
                  }
              
              Text("Congratulations! You've earned a badge!")
                  .font(.headline)
                  .padding()
          } else {
              Text("I'm sorry. You can earn a badge by getting 8 or more questions correct! Try again!")
                  .font(.headline)
                  .padding()
          }



            Spacer()
        }
        .padding()
        .navigationBarBackButtonHidden(true)
        .onAppear {
            print("QuizResultView appeared")
            let badgeName = "badge\(sectionID + 1)"
            print("Attempting to load badge image: \(badgeName)")
        }
    }
}

