//
//  LMIRView.swift
//  Inclusive Minds
//
//  Created by Oliver Park on 11/23/23.
//

import SwiftUI

struct LMIRView: View {
    var body: some View {
        PopUpInfoView(titleName: "Negative Sides of Individual Racism", description: """
Racial profiling: When individuals are stereotyped and treated differently based on their race or ethnicity, they may face discrimination in various aspects of their lives, such as employment, housing, and education.

Hate crimes: Racially motivated violence, such as assaults, property damage, and even murder, has a devastating impact on victims, their families, and communities.

The perpetuation of stereotypes: Individual racism reinforces harmful stereotypes about racial and ethnic groups, contributing to prejudice and discrimination.

The undermining of social cohesion: When individuals feel targeted and excluded based on their race or ethnicity, it erodes social cohesion and hinders the development of a just and equitable society.
""")
    }
}

#Preview {
    LMIRView()
}
