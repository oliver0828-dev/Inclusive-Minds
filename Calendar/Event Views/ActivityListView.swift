//
//  ActivityListView.swift
//  Inclusive Minds (2)
//
//  Created by Oliver Park on 1/7/24.
//

import SwiftUI

struct ActivityListView: View {
    @EnvironmentObject var myActivity: activityData
    @State private var formType: ActivityFormType?
    var body: some View {
        NavigationStack {
            List {
                ForEach(myActivity.events.sorted {$0.date < $1.date }) { event in
                    ListViewRow(event: event, formType: $formType)
                    .swipeActions {
                        Button(role: .destructive) {
                            myActivity.delete(event)
                        } label: {
                            Image(systemName: "trash")
                        }
                    }
                }
            }
            .navigationTitle("Activity")
            .sheet(item: $formType) { $0 }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        formType = .new
                    } label: {
                        Image(systemName: "plus.circle.fill")
                            .imageScale(.medium)
                    }
                }
            }
        }
    }
}

#Preview {
    ActivityListView()
        .environmentObject(activityData(preview: true))
}
