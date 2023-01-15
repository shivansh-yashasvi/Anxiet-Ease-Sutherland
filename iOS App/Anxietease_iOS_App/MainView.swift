//
//  MainView.swift
//  Anxietease
//
//  Created by Sidarth V on 18/07/21.
//

import SwiftUI

struct MainView: View {
    
    var body: some View {
            TabView {
                //Profile Page
                ProfilePage()
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
                //Activies Page
                ActivitiesPage()
                .tabItem {
                    Label("Activites", systemImage: "bolt.horizontal")
                }
                //Calender Page
                CalendarPage()
                .tabItem {
                    Label("Calendar", systemImage: "calendar")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
