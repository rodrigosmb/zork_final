//
//  mainHallway.swift
//  zork
//
//  Created by Aluno 24 on 28/02/25.
//

import Foundation

class MainHallway{
    
    var HasBeenHere = false
    
    func presence () -> Void {
        if HasBeenHere == false {
            HasBeenHere = true
        }
    }
    func LocalText() -> Void {
        print("A cavernous space, empty but for the mirror at the far end. Its glass warps, distorting reflections into something... else. No matter where one stands, the feeling of being watched never fades.")
    }
}
