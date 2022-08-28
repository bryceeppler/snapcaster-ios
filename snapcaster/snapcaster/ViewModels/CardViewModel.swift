//
//  CardViewModel.swift
//  snapcaster
//
//  Created by Bryce Eppler on 2022-08-28.
//

import Foundation

class CardViewModel: ObservableObject {
    @Published private(set) var cards: [Card] = []
    
    init() {
        // fetch data from api
        cards = Card.all
    }
    
    func fetchData(cardName: String) async {
            // create url
            let searchName = cardName.replacingOccurrences(of: " ", with: "+")
            guard let url = URL(string: "http://127.0.0.1:8000/api/ios/?name=" + searchName)
            else{
                print("Invalid url")
                return
            }
            
            // fetch data
            do {
                print("fetching data")
                let (data, _) = try await URLSession.shared.data(from: url)
                
                print("data fetched")
                // decode data
                if let decodedResponse = try? JSONDecoder().decode([Card].self, from:data) {
                    cards = decodedResponse
                }
                print(cards)
            } catch {
                print("Error fetching data")
            }
        }
    
}
