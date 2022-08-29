//
//  CardView.swift
//  snapcaster
//
//  Created by Bryce Eppler on 2022-08-28.
//

import SwiftUI

struct CardView: View {
    var card: Card
    var body: some View {
        ZStack {
            Color("Background")
                     .ignoresSafeArea()
            ScrollView {
                AsyncImage(url: URL(string: card.image)) { image in
                    image.resizable()
                        .aspectRatio(contentMode: .fit)

                } placeholder: {
                    Image(systemName: "photo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100, alignment: .center)
                        .foregroundColor(.white.opacity(0.3))
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                    
                }
                .frame(height: 400)
                .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3), Color(.gray)]), startPoint: .top, endPoint: .bottom))
                .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                
                VStack(spacing:15) {
                    Text(card.name)
                        .font(.title)
                        .bold()
                        .multilineTextAlignment(.center)
                    VStack(alignment: .leading, spacing: 5) {
                        Text(card.set)
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                        
                        Text("Condition: \(card.condition)")
                            .font(.system(size: 20, weight: .bold))

                        Text("$\(card.price.description) CAD")
                            .font(.system(size: 20, weight: .bold))

                        Link("Buy from \(card.website)", destination: URL(string: card.link)!)
                            .buttonStyle(.borderedProminent)
          
                    }
                    
                }
                .padding(.horizontal)
            }
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: Card.all[0])
    }
}
