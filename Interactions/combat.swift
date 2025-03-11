//
//  combat.swift
//  zork
//
//  Created by Aluno 24 on 02/03/25.
//

import Foundation

class combat{
    let fire_goblin = FireGoblin()
    let mad_cook = MadCook()
    var nextt = ""
    
    func combat_interaction (player_character: String, enemy_combatent: String, local_atual: String, physical_health: Int) -> Int{
        var no_one_knocked = true
        var character_health: Int = physical_health
        print("You enganged with the enemy.\n\n")
        while(no_one_knocked){
            print("""
            Choose what to do:\n\n
            
            1 - Attack\n
            2 - Dodge enemy´s attack\n
            3 - Try to escape\n\n
            
            """)
            var optionCombat = readLine()
            var combatMenu:Bool = true
            repeat{
                switch optionCombat {
                    case "1":
                        performAttack(enemy_combatent: enemy_combatent, local_atual: local_atual)
                        if (enemy_combatent == "Fire goblin"){
                            character_health -= fire_goblin.attack()
                        }
                        else{
                            character_health -= mad_cook.attack()
                        }
                        combatMenu = false
                    case "2":
                        if(!dodge()){
                            if (enemy_combatent == "Fire goblin"){
                                character_health -= fire_goblin.attack()
                            }
                            else{
                                character_health -= mad_cook.attack()
                            }
                        }
                        combatMenu = false
                    case "3":
                        if(!attemptEscape(player_character: player_character)){
                            if (enemy_combatent == "Fire goblin"){
                                character_health -= fire_goblin.attack()
                            }
                            else{
                                character_health -= mad_cook.attack()
                            }
                        }
                        else{
                            no_one_knocked = false
                        }
                        combatMenu = false
                    default:
                        print("\nPlease, choose one existing option by typing it's number\n")
                        optionCombat = readLine()
                }
            }while(combatMenu)
            
            if (character_health <= 0){
                no_one_knocked = false
                character_health = 0
            }
            
            print("Player´s physical health: \(character_health)\n")
            
            if (enemy_combatent == "Fire goblin"){
                if (fire_goblin.health <= 0){
                    no_one_knocked = false
                    fire_goblin.health = 0
                }
                print("Fire goblin´s health: \(fire_goblin.health)")
            }
            
            if (enemy_combatent == "Mad cook"){
                if (mad_cook.health <= 0){
                    no_one_knocked = false
                    mad_cook.health = 0
                }
                print("Mad cook´s health: \(mad_cook.health)")
            }
        }
        return(character_health)
    }
    func performAttack (enemy_combatent: String, local_atual: String) -> Void{
        print("Which attack would you like to try?\n\n")
        if (local_atual == "Royal hall"){
            print("""
            1 - Punch the goblin\n
            2 - Slide trough the hall´s floor and knock the goblin to the floor\n
            3 - Grab one of the room´s paintings and smash it at the goblin´s head\n
            4 - Get a sword hung high up the wall and swing it at the goblin\n
            """)
        }
        else{
            print("""
            1 - Kick the cook\n
            2 - Throw a glass at the cook\n
            3 - Rip a drawer from the a utensils cabinet and smash it over the cook\n
            4 - Take the knife from the cook´s hand and swing it at him\n
            """)
        }
        var optionAttack = readLine()
        var attackMenu:Bool = true
        repeat{
            switch optionAttack {
            case "1":
                let randomizer1: Int = Int.random(in: 0...4)
                switch randomizer1{
                    case 0:
                        print("You failed to hit the attack.\n\n")
                    default:
                        print("Damage dealt to your enemy was 10!\n\n")
                        if (enemy_combatent == "Fire goblin"){
                            fire_goblin.health -= 10
                        }
                        else{
                            mad_cook.health -= 10
                        }
                        
                }
                if let next = readLine(){
                    nextt = next
                }
                attackMenu = false
            case "2":
                let randomizer2: Int = Int.random(in: 0...3)
                switch randomizer2{
                    case 0:
                        print("You failed to hit the attack.\n\n")
                    default:
                        print("Damage dealt to your enemy was 20!\n\n")
                        if (enemy_combatent == "Fire goblin"){
                            fire_goblin.health -= 20
                        }
                        else{
                            mad_cook.health -= 20
                        }
                }
                if let next = readLine(){
                    nextt = next
                }
                attackMenu = false
            case "3":
                let randomizer3: Int = Int.random(in: 0...2)
                switch randomizer3{
                    case 0:
                        print("You failed to hit the attack.\n\n")
                    default:
                        print("Damage dealt to your enemy was 30!\n\n")
                        if (enemy_combatent == "Fire goblin"){
                            fire_goblin.health -= 30
                        }
                        else{
                            mad_cook.health -= 30
                        }
                }
                if let next = readLine(){
                    nextt = next
                }
                attackMenu = false
            case "4":
                let randomizer4: Int = Int.random(in: 0...1)
                switch randomizer4{
                    case 0:
                        print("You failed to hit the attack.\n\n")
                    default:
                        print("Damage dealt to your enemy was 40!\n\n")
                        if (enemy_combatent == "Fire goblin"){
                            fire_goblin.health -= 40
                        }
                        else{
                            mad_cook.health -= 40
                        }
                }
                if let next = readLine(){
                    nextt = next
                }
                attackMenu = false
            default:
                print("\nPlease, choose one existing attack by typing it's number\n")
                optionAttack = readLine()
            }
        }while(attackMenu)
    }
    func attemptEscape (player_character: String) -> Bool{
        let randomizer: Int = Int.random(in: 0...1)
        if (player_character == "Ghost"){
            print("Unfazed by the iminent danger, you walked trough a wall in the room and escaped the conflict.\n")
            return true
        }
        else if (player_character == "Steward"){
            switch randomizer {
                case 0:
                    print("You managed to remember one of the hiding spots in the room and escaped from the fight!\n")
                    return true
                default:
                    print("You tried to find a hiding place but could not.\n")
                    return false
            }
        }
        print("You are no good at hiding. Better try and fight!\n")
        return false
    }
    func dodge () -> Bool{
        let randomizer: Int = Int.random(in: 0...1)
        switch randomizer {
            case 0:
                print("The enemy tried to attack you but you managed to dodge!")
                return true
            default:
                print("You failed to dodge.")
                return false
        }
    }
}
