//
//  kitchen.swift
//  zork
//
//  Created by Aluno 24 on 28/02/25.
//

import Foundation

class Kitchen{
    
    var HasBeenHere = false
    
    func presence () -> Void {
        if HasBeenHere == false {
            HasBeenHere = true
        }
    }
    
    func LocalText() -> Void {
        print("The air is thick with spices — and something quite metallic. Pots sway on rusted hooks. The cook, hollow-eyed and pale, moves with unsettling precision. He never leaves. Somehow, he doesn't seem like a cook: his posture feels like a guard.")
    }
}
