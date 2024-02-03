//
//  InqueryPopView.swift
//  Inclusive Mind (iPad)
//
//  Created by Oliver Park on 1/20/24.
//

import SwiftUI

struct InqueryPopView: View {
    @State private var isShowingDetail: Bool = true
    var body: some View {
        VStack{
            Rectangle()
                .frame(width: 40, height: 6)
                .foregroundStyle(Color.gray)
                .cornerRadius(10)
                .padding()

            HStack{
                Text("Racism at School")
                    .font(.title)
                    .fontWeight(.bold)
                
                Spacer()
            }.padding()
            Image("classroom")
                .resizable()
                .frame(width: 350, height: 200)
                .aspectRatio(contentMode: .fit)
                .cornerRadius(10)
            Text("Designed with DALL·E")
                .font(.caption)
                .foregroundStyle(Color.gray)
            
            Text("""
        Racism can make students feel unwelcome, unsafe, and excluded, hindering their ability to learn and reach out for help. Also, it can lead to extreme anxiety, depression, and low self-esteem, which can impact students’ overall growth mindset and development. \n
        Therefore, us as students should be addressing these issues to students who are familiar. We should be the role models for change, we need people like you to promote equality and respect for all! This can foster tolerance and undestading. It can help break the cycle of prejudice and stereotypes that are harmful for people.
        """)
            .multilineTextAlignment(.leading)
            .padding()
        }
    }
    
    
    
    
    
}

#Preview {
    InqueryPopView()
}
