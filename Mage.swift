//
//  Mage.swift
//  zork
//
//  Created by Aluno 42 on 25/02/25.
//

import Foundation

class Mage: Character{
    init( ){
        super.init(name: "Mage", mentalHelth: 100, physicalHealth: 30, friend: "no one", enemy: "Princess", startingPoint: "Library", canHelp: false)
    }
    
    override func talkToKing() -> Void { // neutral
        let randomizer: Int = Int.random(in: 0...5)
        switch randomizer {
        case 1:
            print("\"You have to help me, Mage! My wife can't sleep anymore. It's like the night makes her uncomfortable.\"")
            player.consciousnessLevel += 1
        case 2:
            print("\"The Reign is claiming for me to lower the taxes, but none of us can think of anything other than these weird things happening in the castle.\"")
        case 3:
            print("\"Not now, Mage. I'm busy. Maybe later?\"")
        case 4:
            print("\"Last night I went to the Royal Bathroom, but I felt like I wasn't alone. It seemed like there was this music coming out of the mirror that was making me dizzy.\"")
            player.consciousnessLevel += 1
        case 5:
            print("\"Call me crazy, but I think these things started when that crazy witch Wildrim came here. Her and my wife exchaged gifts. Probably the one my love got was enchanted with some evil...\"")
            player.consciousnessLevel += 1
        default:
            print("\"Why are you asking me, Mage? You're the wise one. You should be the one giving answers.\"")
        }
    }
    
    override func talkToQueen() -> Void { // enemy
        let randomizer: Int = Int.random(in: 0...4)
        switch randomizer {
        case 1:
            print("\"Not you again, you old creep. Move out of my sight.\"")
        case 2:
            print("\"I seriously don't know what you guys are making a fuss about. I'm just fine.\"")
        case 3:
            print("\"Step away from that mirror, Mage. Right now, he's the friend I trust the most in this castle.\" (Why would someone care so much about an object?)")
            player.consciousnessLevel += 1
        case 4:
            print("\"So your precious little potion got retained in the basement? Good luck trying to retrieve it, or getting there alive MUAHAHAHA\"")
            player.consciousnessLevel += 1
        default:
            print("\"After all those years, you still got to make out alive, UNFORTUNETLY.\"")
        }
    }
    
    override func talkToPrincess() -> Void { // enemy
        print("I have no interest in talking to that spoiled child. Nothing usefull would come from her.")
    }
    
    override func talkToSteward() -> Void { // neutral
        let randomizer: Int = Int.random(in: 0...4)
        switch randomizer {
        case 1:
            print("\"People are saying the Queen has gone mad. I'd say she is possessed - don't you think?\"")
            player.consciousnessLevel += 1
        case 2:
            print("\"Have you done some thinking about those mirrors? The horses went mad with them! We had to take all those things out from the barn. They are sensitive animals, I assure you.\"")
            player.consciousnessLevel += 1
        case 3:
            print("\"Maybe I have no use in your quest, Mage. I just live to serve - if you could call that living.\"")
        default:
            print("\"Even the horses look strange. They don't want to be mounted anymore.\"")
        }
    }
    
    override func talkToGhost() -> Void { // neutral
        let randomizer: Int = Int.random(in: 0...4)
        switch randomizer {
        case 1:
            print("\"The madness of the Queen isn't only on her rage throughout the night: people say she has been spending a lot of time in the basement - no one else can even get close to it.\"")
            player.consciousnessLevel += 1
        case 2:
            print("\"Last night, I caught the Queen talking to some mirror in an strange language. It was the most bizarre thing I ever saw in my life - and in death.\"")
            player.consciousnessLevel += 1
        case 3:
            print("\"Yes, Mage. I know I spook you when I come through walks. I do it on purpose LOL.\"")
        default:
            print("\"Everyone I've been talking to has found these times crazy around here. It's not just us...\"")
        }
    }
    func observe () -> Void{
        print("The Mage seldom roams the castle, preferring the solitude of his laboratory or the library. Never before had I realized how the candles ignite upon his arrival and extinguish upon his departure – is it he who causes this? But something has disrupted his usual habits — an unusual fixation on an artifact hidden in the basement. What could possibly demand his attention so intensely?\n")
        if (player.name == "Princess"){
            print("You know however, he would not help you, due to the fact that he doesn´t like you very much.\n")
            self.canHelp = true
        }
    }
    func command () -> Void{
        self.canHelp = true
    }
}
