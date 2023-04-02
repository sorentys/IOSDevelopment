//
//  MeetingsView.swift
//  MeetingOrganizer
//
//  Created by Ty Sorensen on 3/30/23.
//

import SwiftUI

struct MeetingsView: View {
    let meetings: [DailyMeeting]
    var body: some View {
        List {
            ForEach(meetings) { meeting in
                NavigationLink(destination: Text(meeting.title)) {
                    CardView(meeting: meeting)
                }
                .listRowBackground(meeting.theme.mainColor)
            }
        }
        .navigationTitle("Daily Meetings")
        .toolbar {
            Button(action: {}){
                Image(systemName: "plus")
            }
            .accessibilityLabel("New Meeting")
        }
    }
}

struct MeetingsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            MeetingsView(meetings: DailyMeeting.sampleData)
        }
    }
}
