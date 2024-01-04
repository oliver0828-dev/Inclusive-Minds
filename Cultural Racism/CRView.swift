//
//  CRView.swift
//  Inclusive Minds
//
//  Created by Oliver Park on 11/18/23.
//

import SwiftUI

struct CRView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image("cr")
                    .resizable()
                    .frame(width: 300, height: 200)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                Text("Image: New York Times")
                    .font(.caption)
                    .foregroundStyle(Color.gray)
                
                Text("""
                     This involves the belief in the superiority of one culture over others, leading to the devaluation or marginalization of other cultures. It can be seen in cultural appropriation, where aspects of a marginalized culture are adopted by a dominant group without proper recognition or respect.
                     """)
                .padding()
                Spacer()
                PopUpView(ViewName: AnyView(LMCRView()))
                Spacer()
            }.padding()
            .navigationTitle("Cultural Racism")
        }
    }
}

#Preview {
    CRView()
}
