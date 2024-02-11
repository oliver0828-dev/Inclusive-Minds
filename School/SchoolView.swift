//
//  SchoolView.swift
//  Inclusive Minds
//
//  Created by Oliver Park on 12/10/23.
//

import SwiftUI

struct SchoolView: View {
    @State var icons: [Icon] = iconList.icon
    
    var body: some View {
        NavigationStack{
            Spacer()
            VStack{
                List(icons.indices, id: \.self){ index in
                    let icon = icons[index]
                    NavigationLink(destination: icon.viewName){
                        SchoolBoxView(textColor: Color.primary, boxColor: icon.boxColor, image: icon.imageName, imageName: icon.titleName, imageColor: icon.imageColor)
                    }
                    
                    
                    
                }
                //                NavigationLink(destination: QuizContentView()){
                //                    ZStack{
                //                        Rectangle()
                //                            .frame(width: 120, height: 40)
                //                            .cornerRadius(10)
                //                            .foregroundStyle(Color.blue.gradient)
                //                        Text("QUIZ")
                //                            .fontWeight(.semibold)
                //                            .foregroundStyle(Color.white)
                //                            .multilineTextAlignment(.center)
                //                            .frame(width: 120, height: 40)
                //                    }
                //                }
                //                Spacer()
            }
            
        }
        
        
        
    }
}

#Preview {
    SchoolView()
}

struct InquiryView: View{
    var body: some View{
        ZStack{
            Rectangle()
                .frame(width: 300, height: 50)
                .cornerRadius(10)
                .foregroundStyle(Color.gray)
            Text("Why is it important to address racism at school?")
                .fontWeight(.semibold)
                .foregroundStyle(Color.white)
                .multilineTextAlignment(.center)
                .frame(width: 250, height: 45)
        }
    }
}


struct SchoolPopUpView: View {
    @State private var showingPopover = false
    var ViewName: AnyView
    var body: some View {
        Button(action: {showingPopover = true}){
            InquiryView()
        }.popover(isPresented: $showingPopover) {
            ViewName
        }
    }
}
