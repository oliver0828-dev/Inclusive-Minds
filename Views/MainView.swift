//
//  MainView.swift
//  Inclusive Minds
//
//  Created by Oliver Park on 11/17/23.
//

import SwiftUI

struct MainView: View {
    @State private var selection = 0

    var body: some View {
        TabView(selection: $selection){
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
                .tag(0)
            LearnView()
                .tabItem {
                    Label("Learn", systemImage: "book.pages")
                }
                .tag(1)
            SchoolView()
                .tabItem {
                    Label("School", systemImage: "graduationcap.fill")
                }
                .tag(2)
        }
        .tint(Color.blue)
    }
}

#Preview {
    MainView()
}
