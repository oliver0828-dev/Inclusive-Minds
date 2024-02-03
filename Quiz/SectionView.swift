import SwiftUI

struct SectionView: View {
    let spacing: CGFloat
    let horizontalPadding: CGFloat
    @Binding var selectedSection: Int?

    var body: some View {
        GeometryReader { geometry in
            let cardWidth = (geometry.size.width - (horizontalPadding * 2) - (spacing * 2)) / 3
            // TODO: Assets에서 SectionCard1~3 이미지 변경 필요
            HStack(spacing: spacing) {
                ForEach(0..<3) { index in
                    SectionCardView(
                        title: self.title(for: index),
                        description: self.description(for: index),
                        imageName: "SectionCard\(index + 1)"
                    )
                    .frame(width: cardWidth, height: cardWidth)
                    .onTapGesture {
                        self.selectedSection = index
                    }
                }
            }
            .padding(.horizontal, horizontalPadding)
            .frame(height: cardWidth)
        }
        .frame(height: (UIScreen.main.bounds.width - (horizontalPadding * 2) - (spacing * 2)) / 3)
    }

    // TODO: Section명 수정 필요
    private func title(for index: Int) -> String {
        switch index {
        case 0:
            return "Civil & Political Rights"
        case 1:
            return "Economic Rights"
        case 2:
            return "Group Rights"
        default:
            return "Unknown"
        }
    }

    // TODO: Section description 수정 필요
    private func description(for index: Int) -> String {
        switch index {
        case 0:
            return "asdfasdfasdfasdf"
        case 1:
            return "asdfasdfasdf"
        case 2:
            return "asdfasdfasd"
        default:
            return "Unknown description"
        }
    }
}

struct SectionCardView: View {
    var title: String
    var description: String
    var imageName: String

    // TODO: section 이미지의 투명도를 0.3으로 설정해놓았음. 사진이나 기호에 따라 투명도 변경 (opacity)
    var body: some View {
        ZStack(alignment: .topLeading) {
            Image(imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 250, height: 250)
                .clipped()
                .opacity(0.3)
                .cornerRadius(15)

            VStack(alignment: .leading, spacing: 8) {
                Text(title)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .padding([.top, .horizontal], 10)

                Text(description)
                    .font(.subheadline)
                    .foregroundColor(.black)
                    .padding(.horizontal, 10)
            }
        }
        .frame(width: 250, height: 250)
        .background(RoundedRectangle(cornerRadius: 15).fill(Color.white))
        .overlay(
            RoundedRectangle(cornerRadius: 15)
                .stroke(Color.black, lineWidth: 2)
        )
    }
}

