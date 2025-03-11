//
//  King.swift
//  zork
//
//  Created by Aluno 42 on 25/02/25.
//

import Foundation

class King: Character{
    init() {
        super.init(name: "King", mentalHelth: 30, physicalHealth: 100, friend: "Ghost", enemy: "Steward", startingPoint: "Royal bedchamber", canHelp: false)
    }
    
    override func talkToMage() -> Void { // neutral
        let randomizer: Int = Int.random(in: 0...6)
        switch randomizer {
        case 1:
            print("\"I'm curious about Her Majesty's behaviour. When the sun is down, she becomes even madder somehow: running throughout the castle, yielling gibberish and even hurting people...\"")
            player.consciousnessLevel += 1
        case 2:
            print("\"Have Your Majesty tried talking to Her directly?\"")
        case 3:
            print("\"Her Majesty is driving everyone in this castle as mad as Her...\"")
        case 4:
            print("\"I believe I've seen changes reguarding Her Majesty's behaviour since that visit from Her friend, Wildrim. Some say she handles dark magic. I have no trust in that woman!\"")
            player.consciousnessLevel += 1
        case 5:
            print("\"Lots of mysteries have been laying hand onto your Castle, Your Majesty. We are daily receiving occurencies of hallucinations of servants, self-breaking glasses and evil music coming out of mirrors\"")
            player.consciousnessLevel += 1
        default:
            print("\"Your Majesty, whatever this thing is, I wouldn't trust Her Royal Highness in this topic\". (That little prick, he mumbles)")
        }
    }
    
    override func talkToQueen() -> Void { // enemy
        let randomizer: Int = Int.random(in: 0...5)
        switch randomizer {
        case 1:
            print("\"Please, help me, my dear! I'm in danger!\"")
        case 2:
            print("\"Get out of my way!\"")
        case 3:
            print("\"For God's sake, my love, don't let me into another shadow!\"")
            player.consciousnessLevel += 1
        case 4:
            print("\"Quiet! QUIET! I can't hear him!\"")
            player.consciousnessLevel += 1
        default:
            print("\"I feel like everyone is becoming against me! Why do you all hate me?\"")
        }
    }
    
    override func talkToPrincess() -> Void { // neutral
        let randomizer: Int = Int.random(in: 0...5)
        switch randomizer {
        case 1:
            print("\"I'm busy my dear father. Can we talk later?\"")
        case 2:
            print("\"Mom has been going crazy lately. She seems that she can't fall asleep anymore. The night has become a crazy shift for her.\"")
            player.consciousnessLevel += 1
        case 3:
            print("\"My father, have you been to the lower floors lately? I've been feeling sick whenever I go down a few staircases.\"")
            player.consciousnessLevel += 1
        case 4:
            print("")
            player.consciousnessLevel += 1
        default:
            print("\"Whatever you do, don't talk to the Mage. You know I've never got along with that creep\"")
        }
        
    }
    
    override func talkToSteward() -> Void { // enemy
        print("\"I'm always available for your next desire, Your Majesty! (I could see the anger in his eyes. We never got along)\"")
    }
    
    override func talkToGhost() -> Void { // friend
        print("Of all the people from this castle, the one I trust the most is the Ghost. We are good friends.")
        let randomizer: Int = Int.random(in: 0...4)
        switch randomizer {
        case 1:
            print("\"I've been investing the Queen lately. Have you noticed she became afraid of the dark?\"")
            player.consciousnessLevel += 1
        case 2:
            print("\"The mirrors, sir. They are looking weird. Call me crazy, but I feel there is an evil spirit in it.\"")
            player.consciousnessLevel += 1
        case 3:
            print("\"The basement is clearly doomed, sir. I'm hearing some servants got dizzy from getting near it. Now, they're all avoiding going downstairs.\"")
            player.consciousnessLevel += 1
        default:
            print("\"Hey, sir. Crazy times around this castle lately, right? It's like not even beer can cheer this place up - not even lots of good beer!\"")
        }
    }
    func observe () -> Void{
        print("He carries out his daily tasks and royal duties, yet theres something odd about him—at times, he enters one room and mysteriously exits from another. Servants come and go throughout the day, constantly in his presence. A man with so many connections could either be the mastermind behind a plot… or its next victim. Which one is it—if either at all?\n")
        if (player.name == "Steward"){
            print("You know however, he would not help you unless it benefitted him more than you.\n")
            self.canHelp = true
        }
    }
    func command () -> Void{
        self.canHelp = true
    }
}
