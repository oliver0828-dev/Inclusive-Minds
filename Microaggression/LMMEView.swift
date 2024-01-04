//
//  LMMEView.swift
//  Inclusive Minds
//
//  Created by Oliver Park on 11/23/23.
//

import SwiftUI

struct LMMEView: View {
    var body: some View {
        PopUpInfoView(titleName: "Negative Sides of Microaggression", description: """
Social isolation: Microaggressions can make individuals feel uncomfortable and unwelcome in social settings, leading to social isolation and withdrawal.

Decreased participation: Microaggressions can discourage individuals from participating fully in school, work, or other social activities.

Mistrust: Microaggressions can erode trust between individuals and institutions, making it difficult to build relationships and create inclusive communities.
""")
    }
}

#Preview {
    LMMEView()
}
