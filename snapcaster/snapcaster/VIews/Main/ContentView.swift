//
//  ContentView.swift
//  snapcaster
//
//  Created by Bryce Eppler on 2022-08-28.
//

import SwiftUI

struct ContentView: View {
    init() {
//        UITabBar.appearance().shadowImage = UIImage()
//        UITabBar.appearance().backgroundImage = UIImage()
        UITabBar.appearance().isTranslucent = true
        UINavigationBar.appearance().backgroundColor = UIColor(Color.systemBackground)
        UIScrollView.appearance().backgroundColor = UIColor(Color.systemBackground)
    }
    var body: some View {
        TabBar()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
            .environmentObject(CardViewModel())
        ContentView()
            .preferredColorScheme(.light)
            .environmentObject(CardViewModel())
    }
}

extension Color {
    static let systemBackground = Color("Background")
}
