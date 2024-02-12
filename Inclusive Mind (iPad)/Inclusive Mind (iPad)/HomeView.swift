//
//  HomeView.swift
//  Inclusive Mind (iPad)
//
//  Created by Oliver Park on 1/20/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {

        VStack{
            Spacer()
            mainRacismView()
            PopUpView()
            Text("Made with ❤️ by Oliver")
                        .fontWeight(.semibold)
                    Spacer()
                    Spacer()
                    
        
        }
    }
}

#Preview {
    HomeView()
}




struct mainRacismView: View{
    var body: some View{
        ZStack{
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 500, height: 600)
              .background(
                LinearGradient(
                  stops: [
                    Gradient.Stop(color: Color(red: 1, green: 0.13, blue: 0.13), location: 0.00),
                    Gradient.Stop(color: Color(red: 0.64, green: 0.64, blue: 0.32), location: 1.00),
                  ],
                  startPoint: UnitPoint(x: 0.5, y: 0),
                  endPoint: UnitPoint(x: 0.5, y: 1)
                )
              )
              .cornerRadius(34)
            VStack{
                Text("Let's Learn About Racism")
                    .font(.title)
                    .fontWeight(.bold)
                
                Text("What is Racism?")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .padding()
                
                Text("Racism is the unfair treatment or judgment of individuals based on their race or ethnicity, often stemming from beliefs.")
               
                Text("How Can We Address It?")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .padding()
                Text("""
                     We address racism by actively promoting equality, fostering understanding, and dismantling systemic barriers. As a student, we should foster the way how to address it.
                     """)
                
                Text("Go Ahead And Click Learn")
                    .fontWeight(.bold)
                    .padding()
                  
            }
            .fontWeight(.medium)
            .multilineTextAlignment(.center)
            .frame(width: 470, height: 400, alignment: .top)
        }
    }
    
}
