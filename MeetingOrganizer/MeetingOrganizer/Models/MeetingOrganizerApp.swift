//
//  MeetingOrganizerApp.swift
//  MeetingOrganizer
//
//  Created by Ty Sorensen on 3/30/23.
//

import SwiftUI

@main
struct MeetingOrganizerApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                MeetingsView(meetings: DailyMeeting.sampleData)
            }
        }
    }
}
