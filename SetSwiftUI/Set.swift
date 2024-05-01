//
//  SetGame.swift
//  SetSwiftUI
//
//  Created by user on 01.05.24.
//

import Foundation

import Foundation

class Set {
    
    var deck = Deck()
    var cardsOnTable = [Card]()
    var selectedCards = [Card]()
    var tryMatchCards = [Card]()
    var alreadyMatched = [Card]()
    
    func getSelectedCards(index: Int) {
        if selectedCards.count < 4 {
            if !selectedCards.contains(cardsOnTable[index]) {
                selectedCards.append(cardsOnTable[index])
            } else {
                if selectedCards.count < 3 {
                    if let indexTouchedRepeat = selectedCards.firstIndex(of: cardsOnTable[index]) {
                        selectedCards.remove(at: indexTouchedRepeat)
                    }
                }
            }
        }
    }
