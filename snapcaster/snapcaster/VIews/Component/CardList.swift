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
        ZStack {
            Color("Background")
                     .ignoresSafeArea()
            VStack {
                HStack {
                    Text("\(cards.count) \(cards.count > 1 ? "cards" : "card") found")
                        .font(.headline)
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                    .opacity(0.7)
                    Spacer()
                }
                
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 15)], spacing: 15) {
                    ForEach(cards) { card in
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
}

struct CardList_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView{
            CardList(cards: Card.all)
        }
    }
}
