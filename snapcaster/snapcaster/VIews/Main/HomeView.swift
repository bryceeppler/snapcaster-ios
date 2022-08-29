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
                VStack {
                    Text(
                        "Welcome to snapcaster!"
                    )
                    .bold()
                    Text("This is an app designed to help Canadian Magic the Gathering enthusiasts find the cheapest available cards across our indexed websites."
                    )
                        .padding()
                    Text("We currently support the following websites:")
                        .padding(.horizontal)
                    
                    List {
                        Text("401 Games")
                        Text("Fusion Gaming")
                        Text("Gauntlet Games")
                        Text("House of Cards")
                        Text("Wizard's Tower")
                    }
                    .frame(maxHeight: 260)
                            
                        
                    Link("Visit our website", destination: URL(string: "http://54.225.140.11/")!)
                        .buttonStyle(.borderedProminent)
                        .padding()
                    
                    Spacer()
//                        Text("Card of the Day")
//                            .font(.title)
//                            .fontWeight(.bold)
//                            .padding()
//                        AsyncImage(url: URL(string: "https://assets.moxfield.net/cards/card-6J1lN-normal.webp")) { image in
//                            image.resizable()
//                                .aspectRatio(contentMode: .fit)
//
//                        } placeholder: {
//                            Image(systemName: "photo")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: 100, height: 100, alignment: .center)
//                                .foregroundColor(.white.opacity(0.3))
//                                .frame(maxWidth: .infinity, maxHeight: .infinity)
//
//                        }
//                        .frame(height: 400)
//                        .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3), Color(.gray)]), startPoint: .top, endPoint: .bottom))
//                        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
//
//
                }
                
                
            
            }
            .navigationBarItems(leading:
                                       Text("snapcaster")
                   .foregroundColor(Color("DeepRed"))
                   .fontWeight(.semibold )
                                   
        )
            
        }
        .navigationViewStyle(.stack)
        

    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .preferredColorScheme(.dark)
            .environmentObject(CardViewModel())
        HomeView()
            .preferredColorScheme(.light)
            .environmentObject(CardViewModel())
    }
}
