//
//  ContentView.swift
//  snapcaster
//
//  Created by Bryce Eppler on 2022-08-28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabBar()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(CardViewModel())
    }
}
