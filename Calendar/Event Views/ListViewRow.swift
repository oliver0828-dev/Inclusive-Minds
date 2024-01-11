//
//  ListViewRow.swift
//  Inclusive Minds (2)
//
//  Created by Oliver Park on 1/7/24.
//

import SwiftUI

struct ListViewRow: View {
    let event: Event
    @Binding var formType: ActivityFormType?
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                HStack {
                    Text(event.activityCategory.icon)
                        .font(.system(size: 40))
                    Text(event.note)
                }
                Text(
                    event.date.formatted(date: .abbreviated,
                                         time: .shortened)
                )
            }
            Spacer()
            Button {
                formType = .update(event)
            } label: {
                Text("Edit")
            }
            .buttonStyle(.bordered)
        }
    }
}

struct ListViewRow_Previews: PreviewProvider {
    static let event = Event(activityCategory: .Projects, date: Date() , note: "Meeting w/ Jessica")
   static var previews: some View {
       ListViewRow(event: event, formType: .constant(.new))
   }
}
