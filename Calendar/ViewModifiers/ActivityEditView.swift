//
//  ActivityEditView.swift
//  Inclusive Minds (2)
//
//  Created by Oliver Park on 1/5/24.
//

import SwiftUI

struct ActivityEditView: View {
    @EnvironmentObject var activityData: activityData
    @StateObject var viewModel: ActivityModel
    @Environment(\.dismiss) var dismiss
    @FocusState private var focus: Bool?
    var body: some View {
        NavigationStack {
            VStack {
                Form {
                    DatePicker("Date and Time", selection: $viewModel.date) // "Text" wrapper is not needed
                    TextField("Note", text: $viewModel.note)
                        .focused($focus, equals: true)
                    Picker("Event Type", selection: $viewModel.activityCategory) {
                        ForEach(Event.ActivityCategory.allCases, id: \.self) { activity in // Ensure EventType conforms to Identifiable or provide an 'id'
                            Text(activity.icon + " " + activity.rawValue.capitalized)
                                .tag(activity)
                        }
                    }
                    Section(footer:
                                HStack {
                        Spacer()
                        Button {
                            if viewModel.updating {
                                // update this event
                                let activity = Event(id: viewModel.id!,
                                                     activityCategory: viewModel.activityCategory,
                                                     date: viewModel.date,
                                                     note: viewModel.note)
                                activityData.update(activity)
                            } else {
                                // create new event
                                let newActivity = Event(activityCategory: viewModel.activityCategory,
                                                        date: viewModel.date,
                                                        note: viewModel.note)
                                activityData.add(newActivity)
                            }
                            dismiss()
                        } label: {
                            Text(viewModel.updating ? "Update Activity" : "Add Activity")
                        }
                        .buttonStyle(.borderedProminent)
                        .disabled(viewModel.incomplete)
                        Spacer()
                    }
                    ) {
                        EmptyView()
                    }
                }
            }
            .navigationTitle(viewModel.updating ? "Update" : "New Activity")
            .onAppear {
                focus = true
            }
        }
    }
}

#Preview {
    ActivityEditView(viewModel: ActivityModel())
        .environmentObject(activityData())
}
