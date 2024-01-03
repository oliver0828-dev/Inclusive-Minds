//
//  SchoolBoxView.swift
//  Inclusive Minds
//
//  Created by Oliver Park on 12/15/23.
//

import SwiftUI

struct SchoolBoxView: View {
    var textColor: Color
    var boxColor: Color
    var image: String
    var imageName: String
    var imageColor: Color


    var body: some View {
        HStack {
            ZStack{
                Rectangle()
                    .frame(width: 80, height: 80)
                    .cornerRadius(10)
                    .foregroundStyle(boxColor)
                Image(systemName: image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 45, height: 45)
                    .foregroundColor(imageColor)
            }
            Text(imageName)
                .fontWeight(.bold)
                .foregroundColor(textColor)
                .padding()
                
      
        }
    }
}


#Preview {
    SchoolBoxView(textColor: Color.black, boxColor: Color.blue, image: "person.fill", imageName: "Classroom", imageColor: Color.black)
}
