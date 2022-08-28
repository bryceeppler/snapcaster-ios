//
//  ProductCard.swift
//  snapcaster
//
//  Created by Bryce Eppler on 2022-08-28.
//

import SwiftUI

struct ProductCard: View {
    var card: Card
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: card.image)) { image in
                image.resizable()
                    .aspectRatio(contentMode: .fit)
                    .overlay(alignment: .bottom) {
                        RoundedRectangle(cornerRadius: 12, style: .continuous)
                            .opacity(0.8)
                            .frame(maxWidth: 170, maxHeight: 85)
                        
                        ZStack {
                            Text("$\(card.price.description)")
                                .offset(x:5, y: 23)
                                .font(.system(size: 18, weight: .bold))
                                .lineLimit(1)
                                .foregroundColor(.white)
                                .shadow(color: .black, radius: 3, x:0, y:0)
                                .frame(maxWidth: 136, alignment: .bottomTrailing)
                            VStack {
                                Text(card.name)
                                    .font(.system(size: 15, weight: .bold))
                                    .lineLimit(1)
                                    .foregroundColor(.white)
                                    .shadow(color: .black, radius: 3, x:0, y:0)
                                    .frame(maxWidth: 136, alignment: .leading)
                                Text(card.set)
                                    .font(.system(size: 15))
                                    .lineLimit(1)
                                    .foregroundColor(.white)
                                    .shadow(color: .black, radius: 3, x:0, y:0)
                                    .frame(maxWidth: 136, alignment: .leading)
                                Text(card.website)
                                    .font(.system(size: 15))
                                    .lineLimit(1)
                                    .foregroundColor(.white)
                                    .shadow(color: .black, radius: 3, x:0, y:0)
                                    .frame(maxWidth: 136, alignment: .leading)
                                
                            }
                            .offset(x: -8, y: -10)
                        }
                
                        
                            
                    }
                

            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: 40, maxHeight: .infinity)
            }
        }
        .frame(width: 170, height: 237, alignment: .top)
        .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3), Color(.gray)]), startPoint: .top, endPoint: .bottom))
        .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
        .shadow(color: Color.black.opacity(0.3), radius: 15, x:0, y:10)
    }
}

struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard(card: Card.all[0])
    }
}
