//
//  ContentView.swift
//  snapcaster
//
//  Created by Bryce Eppler on 2022-08-27.
//

import SwiftUI


struct Card: Codable {
    var name: String
    var set: String
    var image: String
    var link: String
    var price: Float
    var condition: String
    var id: Int
    
}

struct ContentView: View {
    @State private var cards = [Card]()
    @State private var cardName: String = ""


    
    var body: some View {
        TextField(
            "Search for a magic card",
            text: $cardName
        )
        .onSubmit {
            print("Searching for " + cardName)
            Task {
                cards.removeAll()
                await fetchData()
            }
                
        }
        .textInputAutocapitalization(.never)
        .disableAutocorrection(true)
        .border(.secondary)
        NavigationView {
            List(cards, id: \.id) { card in
                VStack(alignment: .leading) {
                    AsyncImage(
                        url: URL(string: card.image),
                        content: { image in
                            image.resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(maxWidth:90)
                        },
                        placeholder: {
                            ProgressView()
                        }
                    )

                    
                    Text(card.name)
                        .font(.headline)
                    Text("Price: $\(String(format: "%.2f", card.price)) CAD")
                    Text(card.condition)
                }
            }
        }
    }
    func fetchData() async {
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
