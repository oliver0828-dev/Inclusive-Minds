//
//  PopUpView.swift
//  Inclusive Minds
//
//  Created by Oliver Park on 11/22/23.
//

import SwiftUI

struct PopUpView: View {
    @State private var showingPopover = false
    var ViewName: AnyView
    var body: some View {
        Button(action: {showingPopover = true}){
            Text("Learn More")
                .font(.headline)
                .foregroundStyle(Color.white)
            
        }.popover(isPresented: $showingPopover) {
            ViewName
        }
        .frame(width: 140, height: 40)
        .background(
            LinearGradient(
                gradient: Gradient(colors: [Color.red.opacity(0.5), Color.red.opacity(0.8)]),
                startPoint: .top,
                endPoint: .bottom
            )
        )
        .cornerRadius(10)
    }
}

#Preview {
    PopUpView(ViewName: AnyView(LMCRView()))
}
