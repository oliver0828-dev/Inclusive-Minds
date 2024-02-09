//
//  PopUpView.swift
//  Inclusive Mind (iPad)
//
//  Created by Oliver Park on 2/8/24.
//

import SwiftUI

struct PopUpView: View {
    @State private var showingPopover = false
    var body: some View {
        Button(action: {showingPopover = true}){
            Text("Associated with SOAR")
                .fontWeight(.medium)
                .foregroundStyle(Color.black)
            Image("soar")
                .resizable()
                .frame(width:40, height: 40)
            
        }.popover(isPresented: $showingPopover) {
            Text("""
Student Organized Against Racism (SOAR) is an organization addressing anti-racism in schools founded by Betty Lee in Daegu International School. In this project, flashcard sources are provided by SOAR to give more in-depth information on different forms of racism found at school.
""")
        }
        .frame(width: 250, height: 40)
        .background(Color.blue.gradient)
        .cornerRadius(10)
    }
}

#Preview{
    PopUpView()
}

