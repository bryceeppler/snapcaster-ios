//
//  HomeView.swift
//  snapcaster
//
//  Created by Bryce Eppler on 2022-08-28.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var cardViewModel: CardViewModel
    var body: some View {
        NavigationView {
            ZStack {
                Color("Background")
                         .ignoresSafeArea()
                Text("Welcome")
                    .navigationTitle("Home")
                
                    .foregroundColor(.white)
            }
            
        }
        .navigationViewStyle(.stack)
        

    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(CardViewModel())
    }
}
