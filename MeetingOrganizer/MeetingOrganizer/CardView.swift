//
//  CardView.swift
//  MeetingOrganizer
//
//  Created by Ty Sorensen on 3/30/23.
//

import SwiftUI

struct CardView: View {
    let meeting: DailyMeeting
    var body: some View {
        VStack(alignment: .leading) {
            Text(meeting.title)
                .font(.headline)
                .accessibilityAddTraits(.isHeader)
            Spacer()
            HStack {
                Label("\(meeting.attendees.count)", systemImage: "person.3")
                    .accessibilityLabel("\(meeting.attendees.count) attendees")
                Spacer()
                Label("\(meeting.lengthInMinutes)", systemImage: "clock")
                    .labelStyle(.trailingIcon)
                    .accessibilityLabel("\(meeting.lengthInMinutes) meeting minutes")
            }
            .font(.caption)
        }
        .padding()
        .foregroundColor(meeting.theme.accentColor)
    }
}

struct CardView_Previews: PreviewProvider {
    static var meeting = DailyMeeting.sampleData[0]
    static var previews: some View {
        CardView(meeting: meeting)
            .background(meeting.theme.mainColor)
            .previewLayout(.fixed(width: 400, height: 60))
    }
}

