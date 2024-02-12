//
//  ContentView.swift
//  Inclusive Mind (iPad)
//
//  Created by Oliver Park on 1/20/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showingLaunchScreen = true

    var body: some View {
        GeometryReader { geometry in
            if showingLaunchScreen {
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
                    Button("Get Started") {
                        withAnimation {
                            showingLaunchScreen = false
                        }
                    }
                    .font(.headline)
                    .padding()
                    .background(Color.mint)
                    .foregroundColor(.black)
                    .cornerRadius(30)
                    .shadow(radius: 5)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.orange)
                .transition(.move(edge: .bottom))
            } else {
                MainView()
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    ContentView()
}

