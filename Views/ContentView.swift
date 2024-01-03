//
//  ContentView.swift
//  Inclusive Minds
//
//  Created by Oliver Park on 11/14/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { geometry in
            NavigationView {
                VStack {
                    Image("fist")
                        .resizable()
                        .frame(width: 350, height: 350)
                    Text("Inclusive Minds")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundStyle(Color.black)
                        .padding()
                    Label("Welcome!", systemImage: "person.fill.badge.plus")
                        .font(.title2)
                        .fontWeight(.medium)
                        .foregroundStyle(Color.black)
                    NavigationLink(destination: MainView().navigationBarBackButtonHidden(true)) {
                        Text("Get Started")
                            .font(.headline)
                            .padding()
                            .background(Color.mint)
                            .foregroundColor(.black)
                            .cornerRadius(30)
                            .shadow(radius: 5)
                    }
                    
                    Text("Designed for iPhone")
                        .foregroundStyle(Color.black)
                        .font(.callout)
                        .padding()
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.orange)
                .edgesIgnoringSafeArea(.all)
            }
        }
    }
}


#Preview {
    ContentView()
}
