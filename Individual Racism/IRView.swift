//
//  IRView.swift
//  Inclusive Minds
//
//  Created by Oliver Park on 11/18/23.
//

import SwiftUI

struct IRView: View {
    var body: some View {
        NavigationView {
            VStack {
                ZStack{
                    Rectangle()
                        .frame(width: 310, height: 210)
                        .cornerRadius(10)
                    Image("ir")
                        .resizable()
                        .frame(width: 300, height: 200)
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(5)
                }
               
                Text("Image: UNESCO")
                    .font(.caption)
                    .foregroundStyle(Color.gray)
                Text("""
                     This occurs when individuals express discriminatory beliefs, attitudes, or behaviors towards people of a different race. Examples include using racial slurs, making derogatory comments, or displaying prejudice against someone based on their race.
                     """)
                .padding()
                Spacer()
                PopUpView(ViewName: AnyView(LMIRView()))
                Spacer()
            }.padding()
            .navigationTitle("Individual Racism")
        }
    }
}

#Preview {
    IRView()
}
