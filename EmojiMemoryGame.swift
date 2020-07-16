//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Ramon Cunha on 15/07/20.
//  Copyright © 2020 Ramon iOS Cunha. All rights reserved.
//

import SwiftUI

class EmojiMemoryGame {
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["😍", "👻"]
        return MemoryGame<String>(numberOfPairsOfCards: 2, cardContentFactory: { (pairIndex: Int) -> String in
            return emojis[pairIndex]
        })
    }
    
    // Access to the model
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // Intents
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
