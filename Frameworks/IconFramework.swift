//
//  IconFramework.swift
//  Inclusive Minds
//
//  Created by Oliver Park on 12/23/23.
//

import Foundation
import SwiftUI

struct Icon: Identifiable, Hashable{
    static func == (lhs: Icon, rhs: Icon) -> Bool {
        return lhs.id == rhs.id
    }
    let id = UUID()
    let titleName: String
    let imageName: String
    let boxColor: Color
    let imageColor: Color
    let viewName: AnyView
    
    func hash(into hasher: inout Hasher) {
           hasher.combine(id)
       }
}

struct iconList {
    static let icon = [
        Icon(titleName: "Classroom", imageName: "studentdesk", boxColor: .blue, imageColor: .black, viewName: AnyView(SchoolViewFramework(framework: schoolList.schoolData[0]))),
        Icon(titleName: "Encourage", imageName: "hands.clap.fill", boxColor: .blue, imageColor: .black, viewName: AnyView(SchoolViewFramework(framework: schoolList.schoolData[1]))),
        Icon(titleName: "Engage", imageName: "person.badge.shield.checkmark", boxColor: .blue, imageColor: .black, viewName: AnyView(SchoolViewFramework(framework: schoolList.schoolData[2]))),
        Icon(titleName: "Discuss", imageName:"bubble.left.and.text.bubble.right.fill", boxColor: .indigo, imageColor: .yellow, viewName: AnyView(SchoolViewFramework(framework: schoolList.schoolData[2]))),
        Icon(titleName: "Model Vision", imageName: "eye.fill", boxColor: .indigo, imageColor: .yellow, viewName: AnyView(SchoolViewFramework(framework: schoolList.schoolData[2]))),
        Icon(titleName: "Group Norms", imageName:"person.3.sequence.fill", boxColor: .indigo, imageColor: .yellow, viewName: AnyView(SchoolViewFramework(framework: schoolList.schoolData[2]))),
        Icon(titleName: "Open Yourself", imageName: "figure.2.arms.open", boxColor: .purple, imageColor: .white, viewName: AnyView(SchoolViewFramework(framework: schoolList.schoolData[2]))),
        Icon(titleName: "Biases", imageName:"hand.thumbsdown.fill", boxColor: .purple, imageColor: .white, viewName: AnyView(SchoolViewFramework(framework: schoolList.schoolData[2]))),
        Icon(titleName: "Organization", imageName: "shared.with.you", boxColor: .purple, imageColor: .white, viewName: AnyView(SchoolViewFramework(framework: schoolList.schoolData[2])))
    ]
}
