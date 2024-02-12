//
//  LearnView.swift
//  Inclusive Mind (iPad)
//
//  Created by Oliver Park on 1/20/24.
//

import SwiftUI

struct LearnView: View {
    @State var cards: [Card] = cardList.card
    var body: some View {
        NavigationStack{
            VStack{
                HStack{
                    Text("Learn")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding()
                    Spacer()
                }
               
                LearnCardView(cards: cardList.card)
                SchoolView()
            }
            
        }
        
        }
    }


#Preview {
    LearnView(cards: cardList.card)
}
