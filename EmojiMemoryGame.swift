//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Ramon Cunha on 15/07/20.
//  Copyright © 2020 Ramon iOS Cunha. All rights reserved.
//

import SwiftUI

func createCardContent(pairIndex: Int) -> String {
    return "😍"
}

class EmojiMemoryGame {
    private var model: MemoryGame<String> = MemoryGame<String>(numberOfPairsOfCards: 2, cardContentFactory: createCardContent)
    
    // Access to the model
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // Intents
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
