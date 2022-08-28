//
//  SettingsView.swift
//  snapcaster
//
//  Created by Bryce Eppler on 2022-08-28.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView {
            Text("v 1.0.0")
                .navigationTitle("Settings")
        }
        .navigationViewStyle(.stack)

    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
