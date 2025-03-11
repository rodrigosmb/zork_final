//
//  menuHudChoices.swift
//  zork
//
//  Created by Aluno 24 on 28/02/25.
//

import Foundation

let kingNPC = King()
let princessNPC = Princess()
let stewardNPC = Steward()
let ghostNPC = Ghost()
let mageNPC = Mage()

let goblinCombat = combat()
let cookCombat = combat()

let finalBasement = Basement()


// Função do HUD do menu
func displaySimpleMenu() {
   print("\n\n========================================")
    print("1. Stalk someone")
    print("2. Talk to someone")
    print("3. Ask someone for help")
    print("4. Interact with the environment you are in")
    print("5. Go somewhere else in the castle")
    print("6. Use character's special ability")
    print("=========================================\n\n")
}
// Pesquisar EXEMPLOx

func stalk() {
    var choosing = true
    print("""
      \nWho would you like to stalk?\n\n
      
      1 - King\n
      2 - Princess\n
      3 - Steward\n
      4 - Ghost\n
      5 - Mage\n\n
      
      """)
    var stalkChoice = readLine()
    repeat{
        switch stalkChoice{
            case "1":
                print("Stalk King")
            if (player is King){
                print("You can't stalk yourself! Select another character.\n")
                stalkChoice = readLine()
            }else{
                kingNPC.observe()
                if !(player is Steward){
                    kingNPC.canHelp = true
                }
                choosing = false
            }
            case "2":
                print("Stalk Princess")
            if (player is Princess){
                print("You can't stalk yourself! Select another character.\n")
                stalkChoice = readLine()
            }else{
                princessNPC.observe()
                if !(player is Mage){
                    princessNPC.canHelp = true
                }
                choosing = false
            }
            case "3":
            if (player is Steward){
                print("You can't stalk yourself! Select another character.\n")
                stalkChoice = readLine()
            }else{
                stewardNPC.observe()
                if !(player is King){
                    stewardNPC.canHelp = true
                }
                choosing = false
            }
            case "4":
            if (player is Ghost){
                print("You can't stalk yourself! Select another character.\n")
                stalkChoice = readLine()
            }else{
                ghostNPC.observe()
                ghostNPC.canHelp = true
                choosing = false
            }
            case "5":
            if (player is Mage){
                print("You can't stalk yourself! Select another character.\n")
                stalkChoice = readLine()
            }else{
                mageNPC.observe()
                if !(player is Princess){
                    mageNPC.canHelp = true
                }
                choosing = false
            }
            default:
                print("Please select a number that corresponds to a character.\n")
                stalkChoice = readLine()
        }
    }while(choosing)
}

func talk(){
    print("""
\nWho would you like to talk to?\n\n

1 - Ghost\n
2 - King\n
3 - Mage\n
4 - Princess\n
5 - Steward\n\n

""")
    
    var personChoice = readLine()
    var choosing = true
    repeat{
        switch personChoice{
        case "1":
            if (player is Ghost){
                print("You chose to reflect upon you current situation:\n")
                player.reflect()
            }
            else{
                player.talkToGhost()
            }
            choosing = false
        case "2":
            if (player is King){
                print("You chose to reflect upon you current situation:\n")
                player.reflect()
            }
            else{
                player.talkToKing()
            }
            choosing = false
        case "3":
            if (player is Mage){
                print("You chose to reflect upon you current situation:\n")
                player.reflect()
            }
            else{
                player.talkToMage()
            }
            choosing = false
        case "4":
            if (player is Princess){
                print("You chose to reflect upon you current situation:\n")
                player.reflect()
            }
            else{
                player.talkToPrincess()
            }
            choosing = false
        case "5":
            if (player is Steward){
                print("You chose to reflect upon you current situation:\n")
                player.reflect()
            }
            else{
                player.talkToSteward()
            }
            choosing = false
        default:
            print("Please choose one existing option by typing its number.")
            personChoice = readLine()
        }
    }while(choosing)
}

func askHelp () -> Void {
    
    if (player is King) {
        ghostNPC.canHelp = true
    }
    else if (player is Princess) {
        stewardNPC.canHelp = true
    }
    else if (player is Steward) {
        princessNPC.canHelp = true
    }
    else if (player is Ghost) {
        kingNPC.canHelp = true
    }
    
    print("""
\nWho would you like to ask for help?\n\n

1 - Ghost\n
2 - King\n
3 - Mage\n
4 - Princess\n
5 - Steward\n\n

""")
    
    var personChoice = readLine()
    var choosing = true
    repeat{
        switch personChoice{
        case "1":
            if (player is Ghost){
                print("You chose to reflect upon you current situation:\n")
                player.reflect()
            }
            else{
                if (ghostNPC.canHelp){
                    print("You talk the ghost into helping you calm the mad queen down. He sneaks into her room and floats right through her. This leaves the queen paralyzed for a moment, then calm as if she was never cursed.")
                    queenActive = false
                }
                else{
                    print("Upon talking to the ghost, you realise that he either doesn't want to help you, or simply doesn't know how.")
                }
            }
            choosing = false
        case "2":
            if (player is King){
                print("You chose to reflect upon you current situation:\n")
                player.reflect()
            }
            else{
                if (kingNPC.canHelp){
                    if(player is Ghost){
                        print("Despite being your friend, the king can't help you with anything at the moment, his only use is to order people around.")
                    }
                    else{
                        print("You convince the king to help you by doing what he does best, order people around. He commands the \(player.enemy), who would never help you, to do so.")
                        ghostNPC.canHelp = true
                        mageNPC.canHelp = true
                        princessNPC.canHelp = true
                        stewardNPC.canHelp = true
                    }
                }
                else{
                    print("Upon talking to the king, you realise that he either doesn't want to help you, or simply doesn't know how.")
                }
            }
            choosing = false
        case "3":
            if (player is Mage){
                print("You chose to reflect upon you current situation:\n")
                player.reflect()
            }
            else{
                if (mageNPC.canHelp){
                    print("After discussing the situation you are both in, you ask the mage to put out every torch in the castle to make it as dark as possible. You hope this will weaken what has been messing with the mirrors in the castle.")
                    lightsOn = false
                }
                else{
                    print("Upon talking to the mage, you realise that he either doesn't want to help you, or simply doesn't know how.")
                }
            }
            choosing = false
        case "4":
            if (player is Princess){
                print("You chose to reflect upon you current situation:\n")
                player.reflect()
            }
            else{
                if (princessNPC.canHelp){
                    if(player is Ghost){
                        print("The princess apologises but she can't help you with anything at the moment, her charm is no good other than to convince people.")
                    }
                    else{
                        print("You get the princess to help you by making the best use of her charm. She convinces the \(player.enemy), who would never help you, to do so.")
                        ghostNPC.canHelp = true
                        kingNPC.canHelp = true
                        mageNPC.canHelp = true
                        stewardNPC.canHelp = true
                    }
                }
                else{
                    print("Upon talking to the princess, you realise that he either doesn't want to help you, or simply doesn't know how.")
                }
            }
            choosing = false
        case "5":
            if (player is Steward){
                print("You chose to reflect upon you current situation:\n")
                player.reflect()
            }
            else{
                if (stewardNPC.canHelp){
                    if (currentLocation == "Kitchen" || currentLocation == "Royal Hall"){
                        print("Sensing iminent danger, you ask the steward to create a random distraction in that spooky place so you can run somewhere else.")
                        moveAround()
                    }
                    else{
                        print("Unfortunately, the steward's abilities aren't useful at all at the moment.")
                    }
                }
                else{
                    print("Upon talking to the steward, you realise that he either doesn't want to help you, or simply doesn't know how.")
                }
            }
            choosing = false
        default:
            print("Please choose one existing option by typing its number.")
            personChoice = readLine()
        }
    }while(choosing)
}

func moveAround () -> Void {
    print("""
\nWhere would you like to go?\n\n

1 - Royal Hall\n
2 - Kitchen\n
3 - Main Hallway\n
4 - Mad Queen's Bedchamber\n
5 - Basement\n\n

""")
    
    var personChoice = readLine()
    var choosing = true
    repeat{
        switch personChoice{
        case "1":
            print("You successfully moved to the royal hall.")
            currentLocation = "Royal hall"
            choosing = false
        case "2":
            print("You successfully moved to the kitchen.")
            currentLocation = "Kitchen"
            choosing = false
        case "3":
            print("You successfully moved to the main hallway.")
            currentLocation = "Main hallway"
            choosing = false
        case "4":
            if(!queenActive){
                print("You successfully moved to the queen's bedchamber and she wasn't even there.")
                currentLocation = "Mad queen's bedchamber"
            }
            else{
                print("When you tried opening the room's door, the mad queen grabbed your hand firmly, trying to pull you in. Gathering all of your strengh, you manage to escape traumatized, suffering a mental damage of 10.")
                player.mentalHealth -= 10
            }
            choosing = false
        case "5":
            if (player.consciousnessLevel >= 4 && lightsOn == false){
                print("You successfully moved to the basement. You stand in front of the entrance.")
                currentLocation = "Basement"
            }
            else{
                print("You walked all the way to the basement, but when you got close to the entrance, some misterious and enormous force threw you back 5 steps. You couldn't get past this point. There must be something powerful inside. Maybe you should learn more about what is happening to the castle before coming back. You suffered a mental damage of 10.")
                player.mentalHealth -= 10
            }
            choosing = false
        default:
            print("Please choose one existing option by typing its number.")
            personChoice = readLine()
        }
    }while(choosing)
}

func useAbility() -> Void {
    if (player is Ghost){
        print("Your ability is only useful in combat situations. You can not use it right now.")
    }
    else if (player is King){
        print("Your special ability lies on the fact that you can do whathever you want in everyday life. No more advantages for you.")
    }
    else if (player is Mage){
        print("You can use your abilities to go through a puzzle of your choice by using magic, by the expense of mental damage. Do you want to use this ability to solve the next puzzle you encounter?\n\n")
        print("""
    1 - YES
    2 - NO
    """)
        var Choice = readLine()
        var choosing = true
        repeat{
            switch Choice{
            case "1":
                print("Your ability will be used on the next puzzle.")
                puzzleSolver = true
                choosing = false
            case "2":
                print("Your ability won't be used on the next puzzle.")
                choosing = false
            default:
                print("Please choose one existing option by typing its number.")
                Choice = readLine()
            }
        }while(choosing)
        print("You also have the ability to put down the fire on every single torch in the castle, making it extremely hard to see. Would you like to do it?\n")
        print("""
    1 - YES
    2 - NO
    """)
        Choice = readLine()
        choosing = true
        repeat{
            switch Choice{
            case "1":
                print("You use your power and the castle turns extremely dark.")
                lightsOn = false
                choosing = false
            case "2":
                print("You chose that this would be too risky right now.")
                choosing = false
            default:
                print("Please choose one existing option by typing its number.")
                Choice = readLine()
            }
        }while(choosing)
    }
        
    else if (player is Princess){
        print("Throughout your life journey you learned some first aid techniques. Would you like to heal you physical health completely? You can only do it once.\n\n")
        print("""
    1 - YES
    2 - NO
    """)
        var Choice = readLine()
        var choosing = true
        repeat{
            switch Choice{
            case "1":
                print("You successfully healed your physical health.")
                player.physicalHealth = 40
                choosing = false
            case "2":
                print("You chose not to use your ability at the moment. You can still do it in the future.")
                choosing = false
            default:
                print("Please choose one existing option by typing its number.")
                Choice = readLine()
            }
        }while(choosing)
    }
    else{
        print("Your ability is only useful in combat situations. You can not use it right now.")
    }
}

func interact() -> Bool{
    if (currentLocation == "Starting point"){
        if (player is Ghost){
            print("A sudden, violent gust of wind slams the attic hatch shut—but the air is completely still otherwise.\n")
        }
        else if (player is King){
            print("As the player approaches the mirror, their reflection lags behind—moving a second too late. For a brief moment, it even smiles, though the you never did.\n")
        }
        else if (player is Princess){
            print("A dress or cloak slips off the rack and crumples on the floor—when picked up, its ice cold to the touch.\n")
        }
        else if (player is Mage){
            print("You notice a candle flickering strangely—its flame stretching toward you, as if drawn to your presence.\n")
        }
        else{
            print("One of the horses rears up and refuses to calm down, its eyes wide in silent terror, staring at something behind the you, but there is no one there.\n")
        }
        return false
    }
    else if (currentLocation == "Royal hall"){
        print("The embers in the fireplace quiver, as if stirred by an unseen force. Curious, you nudge a pile of coals with your foot. The fire flares up violently—the embers rise and fuse into a blazing goblin, its form writhing with fury. It glares at you, enraged by the disrespect youve shown the flames.")
        player.physicalHealth = goblinCombat.combat_interaction(player_character: player.name, enemy_combatent: "Fire goblin", local_atual: currentLocation, physical_health: player.physicalHealth)
        return false
    }
    else if (currentLocation == "Mad queen's bedchamber"){
        print("Upon the bed lies a diary, its cover marked by bloodstained fingerprints. Flipping through its final pages, the truth unraveled: Ever since I touched the mirror Wildrim bestowed upon me, I felt His soul merge with mine. In that moment, I knew the power I had gained—but also the duty placed upon me. I shall guard Him deep within the basement, where no wanderer or fool will find Him (He shall raise His own walls to keep them away). Light is our greatest ally—it must be so. Only through light does a mirror serve its purpose. I shall ensure that light fills every corner of this castle. With it, we will claim dominion and crush the Dynasty once and for all.")
        player.consciousnessLevel += 4
        return false
    }
    else if (currentLocation == "Kitchen"){
        print("You reach for some food to regain your strength—but thats exactly what the cook was trying to prevent. His eyes lock onto you, his expression turning predatory. In a swift motion, he hurls a sharp knife straight at you—missing your ear by mere inches.\n")
        player.physicalHealth = cookCombat.combat_interaction(player_character: player.name, enemy_combatent: "Mad cook", local_atual: currentLocation, physical_health: player.physicalHealth)
        if (player.physicalHealth > 0){
            print("\nYou can now grab some food and gain some of your health back. 20 physical health points were gained.")
            player.physicalHealth += 20
        }
        return false
    }
    else if (currentLocation == "Main hallway"){
        print("You feel subtly drawn to the mirror, its warped reflections shifting without reason. A low, eerie melody emerges, growing steadily louder. Then, a whispering voice seeps into your mind—or was it coming from the mirror itself? \"Come, child, back to where you never should have left. Light is the path, and at its end… our dominion shall reign.\"A sudden, sharp headache surges through your skull. Better leave—now. 5 mental damage was dealt.")
        player.mentalHealth -= 5
        return false
    }
    else if (currentLocation == "Basement"){
        while(!finalBasement.entrance_puzzle() && player.mentalHealth != 0){
            print("You were not able to solve the puzzle. 5 mental damage was dealt.")
            player.mentalHealth -= 5
            if (player.mentalHealth <= 0){
                player.mentalHealth = 0
            }
        }
        while(!finalBasement.final_puzzle1() && player.mentalHealth != 0){
            print("You were not able to solve the puzzle. 10 mental damage was dealt.")
            player.mentalHealth -= 10
            if (player.mentalHealth <= 0){
                player.mentalHealth = 0
            }
        }
        while(!finalBasement.final_puzzle2() && player.mentalHealth != 0){
            print("You were not able to solve the puzzle. 10 mental damage was dealt.")
            player.mentalHealth -= 10
            if (player.mentalHealth <= 0){
                player.mentalHealth = 0
            }
        }
        while(!finalBasement.final_puzzle3() && player.mentalHealth != 0){
            print("You were not able to solve the puzzle. 10 mental damage was dealt.")
            player.mentalHealth -= 10
            if (player.mentalHealth <= 0){
                player.mentalHealth = 0
            }
        }
        if (player.mentalHealth != 0 && player.physicalHealth != 0){
            print("\nAs if by magic, the final puzzle drained the spirit's last strength. Now so weak, it could be touched without the slightest fear.\nThen, in the final act of this adventure, you seize the cursed object — the very nest where this evil took root. Summoning all your strength, you hurl it to the ground, shattering its hold on the castle.\nAnd so, darkness was extinguished at its source. From that moment on, the Queen returned to her senses, peace was restored, and the Dynasty reigned for centuries to come.")
            return true
        }
        else{
            return false
        }
    }
    return false
}

// Função basica para rodar o menu do jogo
func runMenuChoices() -> Int{
    var x: Bool = true
        displaySimpleMenu()
        print("Choose an option:\n")
    var choice = readLine()
    repeat{
            switch choice {
            case "1":
                stalk()
                x = false
                print("This action costed 6 hours of your day.\n\n")
                return 6
            case "2":
                talk()
                x = false
                print("This action costed 2 hours of your day.\n\n")
                return 2
            case "3":
                askHelp()
                x = false
                print("This action costed 2 hours of your day.\n\n")
                return 2
            case "4":
                if(interact()){
                    return 0
                }
                x = false
                print("This action costed 1 hour of your day.\n\n")
                return 1
            case "5":
                moveAround()
                x = false
                print("This action costed 2 hours of your day.\n\n")
                return 2
            case "6":
                useAbility()
                x = false
                print("This action costed 1 hour of your day.\n\n")
                return 1
            default:
                print("Invalid option. Please try again.\n")
                choice = readLine()
            }
    }while (x)
    
}
