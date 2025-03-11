//
//  mad_queensBedChamber.swift
//  zork
//
//  Created by Aluno 24 on 28/02/25.
//

import Foundation

class MadQueensBedChamber{
    
    var HasBeenHere = false
    
    func presence () -> Void{
        if HasBeenHere == false{
            HasBeenHere = true
        }
    }
    func LocalText() -> Void{
        print("Stepping into the Queens quarters felt like peering into the depths of her fractured mind—pure chaos made manifest. Torn and discarded bed linens, drawers left wide open as if ransacked in a fit of rage, curtains half-ripped from their rods. But none of it compared to the most horrifying sight: a message, scrawled in blood, towering across the wall facing the bed—\"Let there be light!\"") //_____
    }
}
