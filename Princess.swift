//
//  Princess.swift
//  zork
//
//  Created by Aluno 42 on 25/02/25.
//

import Foundation

class Princess: Character{
    init() {
        super.init(name: "Princess", mentalHelth: 80, physicalHealth: 40, friend: "Steward", enemy: "Mage", startingPoint: "Closet", canHelp: false)
    }
    
    override func talkToKing() -> Void { // neutral
        let randomizer: Int = Int.random(in: 0...4)
        switch randomizer {
        case 1:
            print("\"My dear, what has been cursed upon us? This morning the Steward came to shave me, but the mirror he was holding was telling him to cut my throat - he sad.\"")
            player.consciousnessLevel += 1
        case 2:
            print("\"If I had all the time in the world, my dear, I surely would give it all to you. Unfortunately, that is not the case.\"")
        case 3:
            print("\"Wow. I never get tired of looking into your eyes. It's just like your mother's - at least when she was herself.\"")
        case 4:
            print("\"You'll have to take a break from caring for your appearance, my love. The mirrors in this castle are surely cursed. People are saying they can hear some dark music coming out of it!\"")
            player.consciousnessLevel += 1
        default:
            print("\"Can we talk later, dear? Daddy has got a few errands to take care of.\"")
        }
    }
    
    override func talkToQueen() -> Void { // enemy
        let randomizer: Int = Int.random(in: 0...4)
        switch randomizer {
        case 1:
            print("\"It's like you've gotten so distant from me. I miss our good time together.\"")
        case 2:
            print("\"I'm not in a good mood today. Please, leave me alone before I disinherit you!\"")
        case 3:
            print("\"So young! So beautiful! But so full of life... Come, my dear, to the dark alongside me\"")
            player.consciousnessLevel += 1
        case 4:
            print("\"Don't you dare blow that candle! I need the light, or else the dark consumes me.\"")
            player.consciousnessLevel += 1
        default:
            print("\"I am still the Reigning Queen. You will obey to my orders without question.\"")
        }
    }
    
    override func talkToMage() -> Void { // enemy
        print("That old man would have nothing for me - even if he had something!")
    }
    
    override func talkToSteward() -> Void { // friend
        print("I'm a good friend of the Steward. I'm sure that, if he knows anything regarding this mistery, he'll tell me.")
        let randomizer: Int = Int.random(in: 0...4)
        switch randomizer {
        case 1:
            print("\"I'm on a hurry right now, Your Royal Highness, but I tell you this: I wouldn't be so afraid of the dark. It's probably safer there.\"")
            player.consciousnessLevel += 1
        case 2:
            print("\"How come we were all so fine and then out of nowhere everything around became weird?\"")
        case 3:
            print("\"The horses, Your Royal Highness. They went crazy on having even a single mirror inside the barn. They are very sensitive animals, as you may know.\"")
            player.consciousnessLevel += 1
        case 4:
            print("\"The gossip around the servants is that the Her Majesty became afraid of the dark. She orders all the candles in the castle to be kept lit nonstop.\"")
            player.consciousnessLevel += 1
        default:
            print("\"I may not have the answers, Your Royal Highness, but I have some suspicion.\"")
        }
    }
    
    override func talkToGhost() -> Void { // neutral
        let randomizer: Int = Int.random(in: 0...3)
        switch randomizer {
        case 1:
            print("\"Unfortunately, all the wisdom I gathered throughout all my lifes - dead and alive - are not enough to understand what has been going on.\"")
        case 2:
            print("\"To this day, I'm still astonished by your beauty, Your Royal Highness.\"")
        case 3:
            print("\"There is but one advice I can give you, Your Royal Highness: I've heard the Queen talking to someone the other night. Turns out, she was alone in her room. Maybe there is something there.\"")
            player.consciousnessLevel += 1
        default:
            print("\"The beer calls me, my dear. Is it something we can talk later?\"")
        }
    }
    func observe () -> Void{
        print("Ah, youth—the sweetest stage of life. Despite the chaos looming over the castle, the Princess remains lively and graceful. Or could that, perhaps, be an important clue? She strolls through the gardens with her friends, reads under the suns warm glow, and exchanges flirtatious remarks with her admirers. What a remarkable power of persuasion she has!\n")
        if (player.name == "Mage"){
            print("You know however, she will never help you because you don´t really see eye to eye.\n")
            self.canHelp = true
        }
    }
    func command () -> Void{
        self.canHelp = true
    }
}
