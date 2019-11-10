//
//  PlayingCardDeck.swift
//  MyPlayingCard
//
//  Created by Виталий on 01/09/2019.
//  Copyright © 2019 Aperantim. All rights reserved.
//

import Foundation

struct PlayingCardDeck
{
    
    private(set) var cards = [PlayingCard]()
    
    init() {
        for suit in PlayingCard.Suit.all {
            for rank in PlayingCard.Rank.all {
                cards.append(PlayingCard(suit: suit, rank: rank))
            }
        }
    }
    
    mutating func draw() -> PlayingCard? {
        if cards.count > 0 {
            return cards.remove(at: cards.count.arc4random)
        } else {
            return nil
        }
    }
    
}

