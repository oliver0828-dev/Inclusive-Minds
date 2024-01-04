//
//  LMSRView.swift
//  Inclusive Minds
//
//  Created by Oliver Park on 11/23/23.
//

import SwiftUI

struct LMSRView: View {
    var body: some View {
        PopUpInfoView(titleName: "Negative Sides of Structural Racism", description: """
Limited Education Access: Students of color face unfair treatment in schools, like less funding, biased admission rules, and cultural exclusion, affecting their success in education.

Discrimination at Work: People of color struggle due to biased hiring, limited job options, and barriers to career growth, impacting their earning potential and quality of life.

Unequal Housing Access: Unfair housing practices confine people of color to certain neighborhoods lacking good schools and healthcare, limiting their access to vital resources.

Unfairness in the Justice System: People of color experience differential treatment in the legal system, leading to higher arrest rates and harsher penalties, affecting their opportunities and overall well-being.
""")
    }
}

#Preview {
    LMSRView()
}
