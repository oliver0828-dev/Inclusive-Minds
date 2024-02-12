//
//  MockView.swift
//  Inclusive Mind (iPad)
//
//  Created by Oliver Park on 2/4/24.
//

import SwiftUI


struct MockView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button(action: {
                    presentationMode.wrappedValue.dismiss() // Dismiss the popover
                }) {
                    Image(systemName: "xmark")
                        .foregroundStyle(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
                Spacer()
            }
            // ... other components of MockView
        }
        .frame(width: 300, height: 200) // Set the size of the popover
        .padding()
    }
}



#Preview {
    MockView()
}
