//
//  TabBar.swift
//  snapcaster
//
//  Created by Bryce Eppler on 2022-08-28.
//

import SwiftUI

struct TabBar: View {
    init() {
        setupTabBar()
    }

    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            SearchView()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gearshape.2")
                }
        }
    }
}

extension TabBar {
    func setupTabBar() {
        UITabBar.appearance().barTintColor = UIColor(Color("Background"))
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
            .environmentObject(CardViewModel())

    }
}
