//
//  startingPoint.swift
//  zork
//
//  Created by Aluno 24 on 01/03/25.
//

import Foundation

class startingPoint{

    var HasBeenHere = false
    
    func presence () -> Void {
        if HasBeenHere == false{
            HasBeenHere = true
        }
    }

    func LocalText(player: Character) -> Void {
        if player is King {
            print("The sheets are cold. The air feels heavier than it should. Perfumes and incense are drowned by an old, damp scent. The wardrobe's mirror reflects only shadows. Something has changed in the King's bed chamber — but what?")
        } else if player is Princess {
            print("Cramped and dimly lit, the air carries a mix of lavender and old fabric. Heavy dresses hang like silent figures, their shadows stretching in the flickering light. Faint scratching noises echo within the walls, but the source is never clear. Whether stepping in the closet for the first time or returning, the unease never fades.")
        } else if player is Mage {
            print("Dust swirls in the dim candlelight. Towering bookshelves stretch endlessly, their tomes whispering in an unknown tongue. An open book on a cluttered desk shifts its pages on its own. This is a library, but not one the Mage remembers.")
        } else if player is Ghost {
            print("Wood groans above. Dust lingers like a heavy mist. Old trunks lie beneath tattered sheets, frozen in time. A cracked window lets in a pale sliver of light. This attic feels abandoned... but not empty.")
        } else if player is Steward {
            print("The horses snort, restless. Shadows shift in the corners. The scent of hay is tainted with rusted metal. A lantern flickers weakly. The Steward knows these stalls — but tonight, they feel like someone else's.")
        }
    }
}
