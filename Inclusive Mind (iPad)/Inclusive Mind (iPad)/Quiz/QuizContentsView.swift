// Quiz 문제와 답이 보이는 모양에 관한 View.
// 다음 문제 이동 View.
// 답변을 제출하고 채점하여 몇 문제 맞았는지 알려주는 로직.

import SwiftUI

struct QuizContentsView: View {
    let sectionID: Int
    @Binding var selectedSection: Int?
    @State private var currentQuestionIndex = 0
    @State private var shortAnswers: [Int: String] = [:]
    @State private var selectedAnswers: [Int: String] = [:]
    @State private var score: Int = 0
    @State private var showResult = false

    private var questions: [Question] {
        switch sectionID {
        case 0:
            return Section1Quiz.questions
        case 1:
            return Section2Quiz.questions
        case 2:
            return Section3Quiz.questions
        default:
            return []
        }
    }

    var body: some View {
        ZStack {
            Color.orange.edgesIgnoringSafeArea(.all)
            VStack {
                if selectedSection != nil {
                    HStack {
                        Button(action: {
                            self.selectedSection = nil
                        }) {
                            Image(systemName: "arrow.left")
                                .foregroundColor(.white)
                                .imageScale(.large)
                                .padding()
                        }
                        Spacer()
                    }
                }

                // CircleIndicatorView가 QuizResultView 에서 숨겨지도록 조건 추가
                if !showResult {
                    CircleIndicatorView(currentQuestionIndex: $currentQuestionIndex, totalQuestions: questions.count)
                        .padding(.top, 50)
                }

                Spacer(minLength: 50)

                if showResult {
                    QuizResultView(
                        score: score,
                        total: questions.count,
                        sectionID: sectionID,
                        selectedSection: $selectedSection,
                        currentQuestionIndex: $currentQuestionIndex,
                        shortAnswers: $shortAnswers,
                        selectedAnswers: $selectedAnswers
                    )
                } else {
                  TabView(selection: $currentQuestionIndex) {
                          ForEach(questions.indices, id: \.self) { index in
                              ScrollView {
                                  VStack(spacing: 20) {
                                      Text(questions[index].text)
                                          .font(.largeTitle)
                                          .fontWeight(.heavy)
                                          .foregroundColor(Color.black)
                                          .padding()

                                      if questions[index].isShortAnswer {
                                          TextField("Your answer", text: self.getBindingForAnswer(at: index))
                                              .multilineTextAlignment(.center)
                                              .textFieldStyle(RoundedBorderTextFieldStyle())
                                              .padding()

                                          if index < questions.count - 1 {
                                              Text("Next")
                                                  .fontWeight(.bold)
                                                  .foregroundColor(Color.indigo)
                                                  .underline()
                                                  .padding()
                                                  .onTapGesture {
                                                      self.currentQuestionIndex += 1
                                                  }
                                          }
                                      } else {
                                          ForEach(questions[index].options, id: \.self) { option in
                                              AnswerButton(text: option,
                                                           isSelected: self.selectedAnswers[index] == option,
                                                           action: {
                                                              self.selectedAnswers[index] = option
                                                              if index < questions.count - 1 {
                                                                  DispatchQueue.main.asyncAfter(deadline: .now() + 0.7) {
                                                                      self.currentQuestionIndex += 1
                                                                  }
                                                              }
                                                           })
                                          }
                                      }

                                      if index == questions.count - 1 {
                                          Button("Submit Answers") {
                                              self.submitAnswers()
                                          }
                                          .padding()
                                          .background(Color.indigo)
                                          .foregroundColor(.white)
                                          .cornerRadius(10)
                                      }
                                  }
                                  .frame(maxWidth: .infinity)
                                  .padding(.bottom, 100)
                              }
                              .tag(index)
                          }
                      }
                      .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                      .frame(height: UIScreen.main.bounds.height / 2)
                      .onChange(of: currentQuestionIndex) { newIndex in
                          if newIndex == 0 {
                          }
                      }
                  }

                Spacer()
            }
        }
    }

    private func getBindingForAnswer(at index: Int) -> Binding<String> {
        Binding<String>(
            get: { self.shortAnswers[index, default: ""] },
            set: { self.shortAnswers[index] = $0 }
        )
    }

    private func calculateScore() -> Int {
        var score = 0
        for (index, question) in questions.enumerated() {
            if question.isShortAnswer {
                if let userAnswer = shortAnswers[index], userAnswer.lowercased() == question.answer.lowercased() {
                    score += 1
                }
            } else {
                if let userAnswer = selectedAnswers[index], userAnswer == question.answer {
                    score += 1
                }
            }
        }
        return score
    }

    private func submitAnswers() {
        self.score = self.calculateScore()
        self.showResult = true
    }
}

struct AnswerButton: View {
    var text: String
    var isSelected: Bool
    var action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(text)
                .fontWeight(.bold)
                .foregroundColor(isSelected ? Color.white : Color.indigo)
                .padding(.vertical, 10)
                .frame(maxWidth: .infinity, alignment: .center)
            .background(isSelected ? Color.indigo : Color.white)
            .cornerRadius(10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.gray, lineWidth: 2)
            )
        }
        .padding(.horizontal, 60)
    }
}

struct CircleIndicatorView: View {
    @Binding var currentQuestionIndex: Int
    var totalQuestions: Int

    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 5)
                .opacity(0.3)
                .foregroundColor(Color.white)
                .frame(width: 40, height: 40)
            
            Circle()
                .trim(from: 0.0, to: CGFloat(currentQuestionIndex + 1) / CGFloat(totalQuestions))
                .stroke(style: StrokeStyle(lineWidth: 5, lineCap: .round))
                .foregroundColor(Color.white)
                .rotationEffect(Angle(degrees: -90))
                .frame(width: 40, height: 40)
            
            Text("\(currentQuestionIndex + 1)")
                .font(.system(size: 12))
                .foregroundColor(Color.white)
        }
    }
}

struct QuizContentsView_Previews: PreviewProvider {
    static var previews: some View {
        QuizContentsView(sectionID: 1, selectedSection: .constant(nil))
    }
}
