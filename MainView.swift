//
//  MainView.swift
//  Inclusive Mind (iPad)
//
//  Created by Oliver Park on 1/20/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView(){
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
                
            LearnView()
                .tabItem{
                    Label("Learn", systemImage: "filemenu.and.selection")
                }
   
            QuizView()
                .tabItem {
                    Label("Quiz", systemImage: "list.bullet.rectangle.fill")
                }
            
        }
        .tint(Color.purple)
    }
}

#Preview {
    MainView()
}

