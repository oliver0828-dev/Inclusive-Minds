// Badge를 발급받게 되면 QuizView에서 보이는 View.
// Badge에 대한 전반적인 사항 (사이즈, 둥근 사각형 등)

import SwiftUI

struct BadgeView: View {
    @State private var refreshToggle = false

    var body: some View {
        HStack(spacing: 70) {
            ForEach(0..<3, id: \.self) { sectionID in
                ZStack(alignment: .topLeading) {
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(style: StrokeStyle(lineWidth: 2, lineCap: .round, lineJoin: .round, dash: [10, 5]))
                        .frame(width: 150, height: 150)

                    if BadgeManager.shared.hasBadge(forSection: sectionID) {
                        Image("Badge\(sectionID + 1)")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 150, height: 150)
                            .cornerRadius(15)
                            .clipped()

                        Button(action: {
                            BadgeManager.shared.removeBadge(forSection: sectionID)
                            refreshToggle.toggle()
                        }) {
                          Image(systemName: "xmark.circle.fill")
                              .foregroundColor(.gray)
                              .imageScale(.large)
                        }
                        .offset(x: -5, y: -5)
                    }
                }
            }
        }
        .padding(.vertical, 70)
        .id(refreshToggle)
    }
}

// BadgeManager에 배지 삭제 메서드 추가
extension BadgeManager {
    func removeBadge(forSection sectionID: Int) {
        UserDefaults.standard.set(false, forKey: "Badge\(sectionID)")
    }
}
