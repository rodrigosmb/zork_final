//
//  royalHall.swift
//  zork
//
//  Created by Aluno 24 on 28/02/25.
//

import Foundation

class RoyalHall{
    
    var HasBeenHere = false
    
    func presence () -> Void{
        if HasBeenHere == false{
            HasBeenHere = true
        }
    }
    func LocalText() -> Void{
        print("A grand chamber of towering pillars and faded banners. The massive fireplace crackles, its flames whispering in shivering tones. Shadows dance on the marble floor. The warmth should be comforting, yet it feels... off.")
    }
        
}
