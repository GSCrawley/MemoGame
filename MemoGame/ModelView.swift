//
//  ModelView.swift
//  MemoGame
//
//  Created by Danilo Miranda on 03/08/20.
//  Copyright © 2020 Danilo Miranda. All rights reserved.
//

import Foundation

class EmojiMemoryGame {
    private var model: CardGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> CardGame<String> {
        let emojis = ["👻", "🧟‍♂️", "🧙🏻‍♂️", "🎃", "🕸"]
        
        let randomNumberOfPairs = Int.random(in:2...5)
        
        
        return CardGame<String>(numberOfPairsOfCards: randomNumberOfPairs) {
            pairIndex in emojis[pairIndex]
        }
    }
    
    // MARK: - Acces to model
    
    // this will expose cards from model to be used by the View (ContentView)
    var cards: Array<CardGame<String>.Card> {
        model.cards
    }
    
    var pairs: Int {
        model.numberOfPairs
    }
    
    // MARK: - Intent(s)
    
    // this will expose methods to be used by the View to interact with the Model's cards
    func choose(card: CardGame<String>.Card) {
        model.chooseCard(card: card)
    }
}
