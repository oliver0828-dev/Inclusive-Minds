//
//  PopUpInfoView.swift
//  Inclusive Minds
//
//  Created by Oliver Park on 11/22/23.
//

import SwiftUI

struct PopUpInfoView: View {
    var titleName: String = "Title"
    var description: String = """
    LOREM IPSUM
    """
    var body: some View {
        NavigationView{
            VStack{
                Rectangle()
                    .frame(width: 40, height: 6)
                    .foregroundStyle(Color.gray)
                    .cornerRadius(10)
                    .padding()
                HStack{
                    Text(titleName)
                        .font(.title)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Spacer()
                }
                .padding()
                Text(description)
                    .fontWeight(.medium)
                    .font(.subheadline)
                    .padding()
                Spacer()
                Spacer()
            }
        }
    }
}

#Preview {
    PopUpInfoView()
}
