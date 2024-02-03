//
//  LearnView.swift
//  Inclusive Mind (iPad)
//
//  Created by Oliver Park on 1/20/24.
//

import SwiftUI

struct LearnView: View {
    @State var icons: [Icon] = iconList.icon
    var body: some View {
        NavigationStack{
            VStack{
                ScrollView(.horizontal){
                    HStack(spacing: 20){
                       RacismCardView()
                       RacismCardView()
                       RacismCardView()
                       RacismCardView()
                    }.padding()
                    
                }
            }.navigationTitle("Learn")
            VStack{
                SchoolPopUpView(ViewName: AnyView(InqueryPopView()))
                List(icons.indices, id: \.self){ index in
                    let icon = icons[index]
                    NavigationLink(destination: icon.viewName){
                        SchoolBoxView(textColor: Color.primary, boxColor: icon.boxColor, image: icon.imageName, imageName: icon.titleName, imageColor: icon.imageColor)
                    }
                    
                    
                    
                }
            }
        }
    }
}

#Preview {
    LearnView()
}

