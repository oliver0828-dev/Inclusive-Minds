//
//  HomeView.swift
//  Inclusive Minds
//
//  Created by Oliver Park on 11/16/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
       
            NavigationView{
                VStack{
                    Spacer()
                    mainRacismView()
                    Text("Made with ❤️ by Oliver")
                        .fontWeight(.semibold)
                    Spacer()
                    Spacer()
                    
                }
                .navigationTitle("Home")
        }
    }
}

#Preview {
    HomeView()
}

struct SOARTextView: View{
    var body: some View{
        HStack{
            Text("Associated with SOAR")
                .fontWeight(.medium)
            Image("soar")
                .resizable()
                .frame(width:40, height: 40)
        }
    }
}


struct mainRacismView: View{
    var body: some View{
        ZStack{
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 300, height: 500)
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
                    .font(.title2)
                    .fontWeight(.bold)
                Text("What is Racism?")
                    .font(.title3)
                    .fontWeight(.semibold)
                Text("Racism is the unfair treatment or judgment of individuals based on their race or ethnicity, often stemming from beliefs.")
                    .padding()
                Text("How Can We Address It?")
                    .font(.title3)
                    .fontWeight(.semibold)
                Text("We address racism by actively promoting equality, fostering understanding, and dismantling systemic barriers.")
                    .padding()
                Text("Go Ahead And Click Learn\nLet’s Get Started!")
                    .fontWeight(.bold)
                  
            }
            .fontWeight(.medium)
            .multilineTextAlignment(.center)
            .frame(width: 287, height: 396, alignment: .top)
        }
    }
    
}
