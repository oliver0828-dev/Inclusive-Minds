//
//  RacismCardView.swift
//  Inclusive Mind (iPad)
//
//  Created by Oliver Park on 1/30/24.
//

import SwiftUI

struct RacismCardView: View {
    var body: some View {
        NavigationLink(destination: MockView()){
            ZStack{
                Rectangle()
                    .cornerRadius(10)
                    .frame(width: 350, height: 250)
                    .foregroundStyle(Color.gray)
                VStack(){
                    Text("Cultural Appreciation")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                    Image("CA")
                        .resizable()
                        .frame(width: 250, height: 150)
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(10)
                }
                
            }
        }
        
    }
}

#Preview {
    RacismCardView()
}

