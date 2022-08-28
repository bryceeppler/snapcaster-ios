//
//  CardModel.swift
//  snapcaster
//
//  Created by Bryce Eppler on 2022-08-28.
//

import Foundation

struct Card: Codable, Identifiable {
    var name: String
    var set: String
    var image: String
    var link: String
    var price: Float
    var condition: String
    var website: String
    var id: Int
}

extension Card {
    static let all: [Card] = [
        Card(
            name: "Atraxa, Praetors' Voice (Foil)",
            set: "Commander Anthology Volume II",
            image: "https://cdn.shopify.com/s/files/1/1704/1809/products/91f40e7d55417f987cdc43ddb871e7a44b854f69_large.jpg?v=1639841336",
            link: "https://store.401games.ca/products/02dcd191-aecf-11e8-ed44-6ff6e6e80191",
            price: 54.12,
            condition: "NM",
            website: "gauntlet",
            id: 1
            
        ),
        Card(
            name: "Craterhoof Behemoth (AVR)",
            set: "Avacyn Restored",
            image: "https://cdn.shopify.com/s/files/1/1704/1809/products/a249be17-73ed-4108-89c0-f7e87939beb8_large.jpg?v=1659609851",
            link: "https://store.401games.ca/products/craterhoof-behemoth-avr",
            price: 56.12,
            condition: "NM",
            website: "gauntlet",
            id: 2

        ),
        Card(
            name: "Collector Ouphe (MH1)",
            set: "Modern Horizons",
            image: "https://cdn.shopify.com/s/files/1/1704/1809/products/085107a2-c1ec-473c-81d8-23e5a7197776_large.jpg?v=1659607736",
            link: "https://store.401games.ca/products/02dcd191-aecf-11e9-f336-809ab3ee6aef",
            price: 5.11,
            condition: "NM",
            website: "four01",
            id: 3

        ),
        Card(
            name: "Atraxa, Praetors' Voice (Foil)",
            set: "Commander Anthology Volume II",
            image: "https://cdn.shopify.com/s/files/1/1704/1809/products/91f40e7d55417f987cdc43ddb871e7a44b854f69_large.jpg?v=1639841336",
            link: "https://store.401games.ca/products/02dcd191-aecf-11e8-ed44-6ff6e6e80191",
            price: 54.12,
            condition: "NM",
            website: "gauntlet",
            id: 4
            
        ),
        Card(
            name: "Craterhoof Behemoth (AVR)",
            set: "Avacyn Restored",
            image: "https://cdn.shopify.com/s/files/1/1704/1809/products/a249be17-73ed-4108-89c0-f7e87939beb8_large.jpg?v=1659609851",
            link: "https://store.401games.ca/products/craterhoof-behemoth-avr",
            price: 56.12,
            condition: "NM",
            website: "gauntlet",
            id: 5

        ),
        Card(
            name: "Collector Ouphe (MH1)",
            set: "Modern Horizons",
            image: "https://cdn.shopify.com/s/files/1/1704/1809/products/085107a2-c1ec-473c-81d8-23e5a7197776_large.jpg?v=1659607736",
            link: "https://store.401games.ca/products/02dcd191-aecf-11e9-f336-809ab3ee6aef",
            price: 5.11,
            condition: "NM",
            website: "four01",
            id: 6

        )
    ]
}
