//
//  LearnCardFramework.swift
//  Inclusive Mind (iPad)
//
//  Created by Oliver Park on 1/30/24.
//

import Foundation

struct Card: Identifiable {
    let id = UUID()
    let name: String
    let caption: String
}

struct cardList{
    static let card = [
        Card(name: "Cultural Appropriation", caption: "Consuming while diminishing and dishonoring a certain culture despite acknowledging that the culture exists"),
        Card(name: "Cultural Appreciation", caption: "Similar to cultural relativism, respecting and commending its uniqueness and individuality"),
        Card(name: "Implicit Bias", caption: "Implicit bias is a form of bias that occurs unconsciously and unintentionally, that nevertheless affects judgments, decisions, and behaviors"),
        Card(name: "Racial Insensitivity", caption: "Racial Insensitivity is when you unintentionally offend a race by mocking their culture"),
        Card(name: "Nationality vs Ethnicity", caption: "A nationality and an ethnicity is that a nationality is the title you will get by living in a certain nation. But an ethnicity is the way people will identify you by how you look or your culture.")
    ]
}



