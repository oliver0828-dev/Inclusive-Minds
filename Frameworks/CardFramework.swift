//
//  CardView.swift
//  Inclusive Minds
//
//  Created by Oliver Park on 12/25/23.
//

import Foundation

struct Card: Identifiable, Hashable {
    let id: Int
    let cardImage: String
    let cardText: String
    let cardCaption: String
}

struct cardList {
    static let card = [
        Card(id: 1, cardImage: "cr", cardText: "Cultural Racism", cardCaption: "What is Cultural Racism?"),
        Card(id: 2, cardImage: "me", cardText: "Microaggression", cardCaption: "What is Microaggression?"),
        Card(id: 3, cardImage: "ir", cardText: "Individual Racism", cardCaption: "What is Individual Racism?"),
        Card(id: 4, cardImage: "sr", cardText: "Structural Racism", cardCaption: "What is Structural Racism")
    ]
}
