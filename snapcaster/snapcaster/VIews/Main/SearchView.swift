//
//  SearchView.swift
//  snapcaster
//
//  Created by Bryce Eppler on 2022-08-28.
//

import SwiftUI

struct SearchView: View {
    @EnvironmentObject var cardViewModel: CardViewModel
    @State private var cardName: String = ""
    var body: some View {

        NavigationView {
     
                ScrollView {
                    
                    CardList(cards: cardViewModel.cards)

                }
                .navigationBarItems(leading:
                                           Text("snapcaster")
                    
                       .foregroundColor(Color("DeepRed"))
                       .fontWeight(.semibold)
                                       
                   )
                .navigationBarItems(trailing:
                                        TextField(
                                                    "Search for a magic card",
                                                    text: $cardName
                                                )
                                            .frame(maxWidth:200)
                                                .onSubmit {
                                                    print("Searching for " + cardName)
                                                    Task {
                                                        await searchCard()
                                                    }
                                                        
                                                }
            )
            
        }
        .navigationViewStyle(.stack)


    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
            .preferredColorScheme(.dark)
            .environmentObject(CardViewModel())
        SearchView()
            .preferredColorScheme(.light)
            .environmentObject(CardViewModel())
    }
}

extension SearchView {
    private func searchCard() async {
        await cardViewModel.fetchData(cardName: cardName)
    }
}
