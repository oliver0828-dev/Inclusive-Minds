// Main화면에서 Quiz 탭을 선택하면 나오는 View.

import SwiftUI

struct QuizView: View {
    let spacing: CGFloat = 15
    let horizontalPadding: CGFloat = 20
    @State private var selectedSection: Int? = nil

    var body: some View {
        ZStack {
            Color.orange.edgesIgnoringSafeArea(.all)

            VStack {
                if selectedSection == nil {
                    BadgeView()
                    
                    SectionView(spacing: spacing, horizontalPadding: horizontalPadding, selectedSection: $selectedSection)
                        .padding(.leading, horizontalPadding)
                    
                } else if let selectedSection = selectedSection {
                    QuizContentsView(sectionID: selectedSection, selectedSection: $selectedSection)
                }

                Spacer()
            }
        }
    }
}

struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        QuizView()
            .previewLayout(.fixed(width: 1024, height: 768))
            .previewInterfaceOrientation(.landscapeRight)
    }
}


