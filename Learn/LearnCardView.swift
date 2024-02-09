import SwiftUI

struct RacismCardView: View {
    var card: Card
    @Binding var isFlipped: Bool
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Image(card.image)
                .resizable()
                .frame(width: 350, height: 250)
                .aspectRatio(contentMode: .fit)
                .clipped()
                .cornerRadius(15)
                .opacity(isFlipped ? 0 : 1) // Hide when flipped

            VStack(alignment: .leading, spacing: 8) {
                Text(card.name)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
            }
            .background(Color.black.opacity(0.5))
            .cornerRadius(10)
            .opacity(isFlipped ? 0 : 1) // Hide text when flipped
        }
        .frame(width: 350, height: 250)
        .cornerRadius(15)
    }
}

struct RacismCardBackView: View {
    var card: Card
    @Binding var isFlipped: Bool
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundStyle(Color.secondary)
                .frame(width: 350, height: 250)
                .cornerRadius(15)
                .opacity(isFlipped ? 1 : 0) // Show only when flipped

            Text(card.caption)
                .foregroundStyle(Color.black)
                .frame(width: 340, height: 250)
                .opacity(isFlipped ? 1 : 0) // Show text when flipped
                .rotation3DEffect(
                    .degrees(isFlipped ? 0 : 180), // Start with the text rotated an extra 180 degrees
                    axis: (x: 0.0, y: 1.0, z: 0.0)
                )
                .padding()
        }
        .frame(width: 350, height: 250)
        .cornerRadius(15)
        .rotation3DEffect(
            .degrees(isFlipped ? 180 : 0),
            axis: (x: 0.0, y: 1.0, z: 0.0)
        )
    }
}

struct LearnCardView: View {
    @State var cards: [Card] = cardList.card // Ensure your cardList is correctly initialized
    @State var flippedStates: [Bool]
    
    let width: CGFloat = 350
    let height: CGFloat = 250
    let duration: Double = 0.3
    
    init(cards: [Card]) {
        self.cards = cards
        self._flippedStates = State(initialValue: [Bool](repeating: false, count: cards.count))
    }
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                ForEach(cards.indices, id: \.self) { index in
                    let card = cards[index]
                    ZStack {
                        RacismCardView(card: card, isFlipped: $flippedStates[index])
                        RacismCardBackView(card: card, isFlipped: $flippedStates[index])
                    }
                    .rotation3DEffect(
                        .degrees(flippedStates[index] ? 180 : 0),
                        axis: (x: 0.0, y: 1.0, z: 0.0)
                    )
                    .onTapGesture {
                        withAnimation(.linear(duration: duration)) {
                            flippedStates[index].toggle()
                        }
                    }
                }
            }
            .padding()
        }
    }
}

// Preview provider for SwiftUI Previews
struct LearnCardView_Previews: PreviewProvider {
    static var previews: some View {
        LearnCardView(cards: cardList.card) // Replace with your actual data source
    }
}

