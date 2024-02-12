////
////  RacismCardView.swift
////  Inclusive Mind (iPad)
////
////  Created by Oliver Park on 1/30/24.
////
//
//import SwiftUI
//
//struct RacismCardView: View {
//    @State var cards: [Card] = cardList.card
//    @Binding var degree: Double
//    var body: some View {
//
//            ScrollView(.horizontal, showsIndicators: false) {
//                HStack(spacing: 20) {
//                    ForEach(cards.indices, id: \.self) { index in
//                        let card = cards[index]
//
//                        ZStack(alignment: .bottomLeading) {
//                            Image(card.image)
//                                .resizable()
//                                .frame(width: 350, height: 250)
//                                .aspectRatio(contentMode: .fit)
//                                .clipped()
//                                .cornerRadius(15)
//
//                            VStack(alignment: .leading, spacing: 8) {
//                                Text(card.name)
//                                    .font(.title)
//                                    .fontWeight(.bold)
//                                    .foregroundColor(.white)                  .padding()
//                            }
//                            .background(Color.black.opacity(0.5))
//                            .cornerRadius(10)
//                        }
//                        .frame(width: 350, height: 250)
//                        .cornerRadius(15)
//                    }
//                }
//                .padding()
//            }.rotation3DEffect(Angle(degrees: degree), axis: (x:0, y:1, z: 0))
//    }
//    }
//
//
//
//#Preview {
//    RacismCardView()
//}
//
