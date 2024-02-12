////
////  RacismCardBackView.swift
////  Inclusive Mind (iPad)
////
////  Created by Oliver Park on 2/7/24.
////
//
//import SwiftUI
//
//struct RacismCardBackView: View {
//    @State var cards: [Card] = cardList.card
//    var body: some View {
//        ScrollView(.horizontal){
//            HStack(spacing: 20){
//                ForEach(cards.indices, id: \.self) { index in
//                    let card = cards[index]
//                    ZStack{
//                        
//                        Rectangle()
//                            .frame(width: 350, height: 250)
//                            .cornerRadius(15)
//                        Text(card.caption)
//                            .foregroundStyle(Color.black)
//                            .frame(width: 340, height: 250)
//                        
//                    }
//                    
//                }
//            }
//        }
//    }
//}
//
//#Preview {
//    RacismCardBackView()
//}
