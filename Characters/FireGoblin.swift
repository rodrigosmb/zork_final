//
//  FireGoblin.swift
//  zork
//
//  Created by Aluno 24 on 02/03/25.
//

import Foundation

class FireGoblin {
    let name: String = "Fire goblin"
    var health: Int = 20
    
    func attack() -> Int {
        let randomizer: Int = Int.random(in: 0...4)
        switch randomizer {
            case 0:
                print("The goblin gathered his strength and directed a blaze of fire at you!\n- 30 damage")
                return 30
            case 1:
                print("The goblin bit you with it´s flaming fangs!\n- 20 damage")
                return 20
            case 2:
                print("The goblin trew a flaming log at you!\n- 20 damage")
                return 20
            case 3:
                print("The goblin scratched you with it´s flaming claws!\n- 10 damage")
                return 10
            case 4:
                print("The goblin flinched and did not attack.\n- 0 damage")
                return 0
            default:
                print("Missed attack\n- 0 damage")
                return 0
        }
    }
}
