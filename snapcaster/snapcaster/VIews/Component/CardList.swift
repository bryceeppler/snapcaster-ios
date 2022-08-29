//
//  CardList.swift
//  snapcaster
//
//  Created by Bryce Eppler on 2022-08-28.
//

import SwiftUI

struct CardList: View {
    var cards: [Card]
    var body: some View {

        VStack {
            HStack {
                Text(
                    (cards.isEmpty) ? "Search for a card" : ("\(cards.count) \(cards.count > 1 ? "cards" : "card") found")
                )
                .font(.headline)
                .fontWeight(.medium)
//                Text("\(cards.count) \(cards.count > 1 ? "cards" : "card") found")
//                    .font(.headline)
//                    .fontWeight(.medium)
//                    .foregroundColor(.white)
                .opacity(0.7)
                Spacer()
            }
            
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 15)], spacing: 15) {
                ForEach(cards.sorted{$0.price < $1.price}) { card in
                    NavigationLink(destination: CardView(card: card)) {
                        ProductCard(card: card)
                    }
                    .buttonStyle(PlainButtonStyle())  // Here is what you need

                }
            }
            .padding(.top)
        }
        .padding(.horizontal)
        
    }
}

struct CardList_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView{
            CardList(cards: Card.all)
        }
    }
}
