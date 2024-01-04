//
//  MEView.swift
//  Inclusive Minds
//
//  Created by Oliver Park on 11/18/23.
//

import SwiftUI

struct MEView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image("mi")
                    .resizable()
                    .frame(width: 300, height: 200)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                Text("Image: Health Matters")
                    .font(.caption)
                    .foregroundStyle(Color.gray)
                
                Text("""
                     These are subtle, often unintentional, remarks or actions that communicate derogatory or negative attitudes towards individuals based on their race. Examples include comments about someone's accent, assumptions about their background, or stereotyping.
                     """)
                .padding()
                Spacer()
                PopUpView(ViewName: AnyView(LMMEView()))
                Spacer()
            }.padding()
            .navigationTitle("Microaggression")
        }
    }
}

#Preview{
    MEView()
}
