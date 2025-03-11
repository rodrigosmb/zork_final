//
//  MadCook.swift
//  zork
//
//  Created by Aluno 24 on 02/03/25.
//

import Foundation

class MadCook {
    let name: String = "Mad cook"
    var health: Int = 40
    
    func attack() -> Int {
        let randomizer: Int = Int.random(in: 0...4)
        switch randomizer {
            case 0:
                print("The cook threw a knife at you!\n- 15 damage")
                return 15
            case 1:
                print("The cook spilled a boiling cauldron of soup all over you!\n- 10 damage")
                return 10
            case 2:
                print("The cook hit you hard with a pan!\n- 10 damage")
                return 10
            case 3:
                print("The cook trew a spoon at you!\n- 5 damage")
                return 5
            case 4:
                print("The cook flinched and did not attack.\n- 0 damage")
                return 0
            default:
                print("Missed attack\n- 0 damage")
                return 0
        }
    }
}
