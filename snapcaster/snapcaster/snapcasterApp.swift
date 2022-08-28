//
//  snapcasterApp.swift
//  snapcaster
//
//  Created by Bryce Eppler on 2022-08-27.
//

import SwiftUI

@main
struct snapcasterApp: App {
    @StateObject var cardViewModel = CardViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(cardViewModel)
        }
    }
}
