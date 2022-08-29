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
                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                            .opacity(0.95)
                            .frame(maxWidth: 150, maxHeight: 85)
                            .foregroundColor(Color("CustomGray"))
                        ZStack {
                            Text("$\(card.price.description)")
                                .offset(x:0, y: 25)
                                .font(.system(size: 16, weight: .bold))
                                .lineLimit(1)
                                .foregroundColor(.white)
                                .shadow(color: .black, radius: 3, x:0, y:0)
                                .frame(maxWidth: 130, alignment: .bottomTrailing)
                            VStack {
                                Text(card.name)
                                    .font(.system(size: 13, weight: .bold))
                                    .lineLimit(1)
                                    .foregroundColor(.white)
                                    .shadow(color: .black, radius: 3, x:0, y:0)
                                    .frame(maxWidth: 130, alignment: .leading)
                                Text(card.set)
                                    .font(.system(size: 13))
                                    .lineLimit(1)
                                    .foregroundColor(.white)
                                    .shadow(color: .black, radius: 3, x:0, y:0)
                                    .frame(maxWidth: 130, alignment: .leading)
                                Text(card.website)
                                    .font(.system(size: 13))
                                    .lineLimit(1)
                                    .foregroundColor(.white)
                                    .shadow(color: .black, radius: 3, x:0, y:0)
                                    .frame(maxWidth: 130, alignment: .leading)
                                
                            }
                            .offset(y: -10)
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
