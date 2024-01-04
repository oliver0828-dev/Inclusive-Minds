//
//  SRView.swift
//  Inclusive Minds
//
//  Created by Oliver Park on 11/21/23.
//

import SwiftUI

struct SRView: View {
    var body: some View {
        NavigationView{
            VStack{
                ZStack{
                    Rectangle()
                        .frame(width: 310, height: 210)
                        .cornerRadius(10)
                    Image("sr")
                        .resizable()
                        .frame(width: 300, height: 200)
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(5)
                }
                
                
                
                Text("Image: University of Southern California")
                    .font(.caption)
                    .foregroundStyle(Color.gray)
                
                Text("""
                         It's about unfair systems treating people differently because of their race and working to make things fair for everyone. In school, it can create barriers for certain students based on their race. These barriers affect education, jobs, housing, and the legal system.
                         """)
                .padding()
                Spacer()
                PopUpView(ViewName: AnyView(LMSRView()))
                Spacer()
                
            }.padding()
            .navigationTitle("Structural Racism")
        }
    }
}

#Preview {
    SRView()
}
