//
//  ContentView.swift
//  SecretGardenTest
//
//  Created by Carmen on 07.11.21.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            StoreView()
                .tabItem {
                    Label("Store", systemImage: "cart")
                }
            GardenView()
                .tabItem {
                    Label("Garden", systemImage: "leaf")
                }
            GoalsView()
                .tabItem {
                    Label("Goals", systemImage: "flag.2.crossed")
                }
            CommunityView()
                .tabItem {
                    Label("Community", systemImage: "person.3.sequence.fill")
                }
        }
    }
}



#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
