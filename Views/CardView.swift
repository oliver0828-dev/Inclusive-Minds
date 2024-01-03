//
//  CardView.swift
//  Inclusive Minds
//
//  Created by Oliver Park on 12/25/23.
//

import SwiftUI

struct CardView: View {
    let imageName: String
    let textName: String
    let caption: String
    
    var body: some View {
        ZStack(alignment: .top) {
            Rectangle()
                .frame(width: 300, height: 350)
                .foregroundStyle(.indigo)
                .cornerRadius(30)
            VStack {
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300)
                    .cornerRadius(30)
                    .clipped() // Ensure the image doesn't exceed the bounds
                
                VStack(alignment: .leading) {
                    Text(textName)
                        .font(.title)
                        .fontWeight(.medium)
                        .foregroundColor(.black)
                    Text(caption)
                        .font(.headline)
                        .foregroundColor(.white)
                }
                .frame(width: 300, alignment: .leading) // Align text to the left
                .padding(.leading, 20) // Add padding to the left of the text
                Spacer() // Pushes the content to the top
            }
        }
    }
}


#Preview{
    CardView(imageName: "cr", textName: "Cultural Racism", caption: "What is Cultural Racism?")
}
