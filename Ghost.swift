//
//  Ghost.swift
//  zork
//
//  Created by Aluno 42 on 25/02/25.
//

import Foundation

class Ghost: Character{
    init(){
        super.init(name: "Ghost", mentalHelth: 50, physicalHealth: 10000000, friend: "King", enemy: "no one", startingPoint: "Attic", canHelp: false)
    }
    
    override func talkToKing() -> Void { // friend
        print("Probaby, I'm the only one in this castle that can claim the King as a friend - maybe because I'm the only one around who's dead.")
        let randomizer: Int = Int.random(in: 0...5)
        switch randomizer {
        case 1:
            print("\"She hasn't slept in days! If you'd ask me, Ghost, I'd say the nights are the toughest for her, but I don't know why that is.\"")
            player.consciousnessLevel += 1
        case 2:
            print("\"Can you believe the kind of madness we're dealing here with? It's been crazy times around this castle.\"")
        case 3:
            print("\"Long time since we've had a drink, right? I wish I had more to celebrate...\"")
        case 4:
            print("\"You should be greatful for not having to worry about your appearance, Ghost - since you're dead. Somehow, the mirrors are making me feel dizzy - and lots of servants throughout the castle too!\"")
            player.consciousnessLevel += 1
        case 5:
            print("\"The servants are refusing to go downstairs. It's like I don't rule this place anymore. 'But the last workers who went to the basement had to be brought tied by ropes, because he passed out'. These excuses...\"")
            player.consciousnessLevel += 1
        default:
            print("\"I'm also trying to make sense of it all, Ghost, but, to be true, nothing makes sense to me.\"")
        }
    }
    
    override func talkToQueen() -> Void { // enemy
        let randomizer: Int = Int.random(in: 0...4)
        switch randomizer {
        case 1:
            print("\"What do you want, bizarre creature?\"")
        case 2:
            print("\"I have problems of my own to take care of. I don't need some old soul bothering me.\"")
        case 3:
            print("\"Don't even think about getting anywhere near me! You know your nature gives me the goosebumps.\" (Maybe I could use this skill in my advantage)")
            player.consciousnessLevel += 1
        case 4:
            print("\"Quiet! QUIET! I can't hear him!\" (She seems to been hearing voices)")
            player.consciousnessLevel += 1
        default:
            print("\"I don't care you were alive a gazillion years ago! If you're in MY castle, you will obey to MY rules!\"")
        }
    }
    
    override func talkToMage() -> Void { // neutral
        let randomizer: Int = Int.random(in: 0...4)
        switch randomizer {
        case 1:
            print("\"Have I told you that you always spook me when you come through walls?\"")
        case 2:
            print("\"Yes, I know you came looking for answers, but I'm still digging this mistery. All I have for now is the clues.\"")
        case 3:
            print("\"Old people already have trouble getting good sleep., but the Her Majesty's been pushing it. It's been a couple of days since she started running throughout the castle and yelling in rage.\"")
            player.consciousnessLevel += 1
        case 4:
            print("\"I was excited about a new shipment of potions coming last week, but it seems that the basement, where they kept it, is unapproachable. The servants are saying it's haunted. I say they're lazy. That's what it is!\"")
            player.consciousnessLevel += 1
        default:
            print("\"I've read tons of books in my life before, but never one that quite explained what we're dealing with in this place.\"")
        }
    }
    
    override func talkToPrincess() -> Void { // neutral
        let randomizer: Int = Int.random(in: 0...3)
        switch randomizer {
        case 1:
            print("\"I don't know, Ghost. Everything has been so weird lately. The servants, dad, and especially mom.\"")
        case 2:
            print("\"Maybe I don't know what day today is, but I know for sure I look gorgeous!\"")
        case 3:
            print("\"Mom and I used to take a few walks around the gardens. Now, she is acting all weird, especially near mirrors. It's like she becomes hypnotized: stares at it and speaks some weird things (but not like talking to her reflection!)\"")
            player.consciousnessLevel += 1
        default:
            print("\"Time goes by but you still get to keep your age. You're so lucky, Ghost. I wish I could die this pretty, and then live like this forever.\"")
        }
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
            print("\"Maybe I have no use in your quest, Ghost. I just live to serve - if you could call that living.\"")
        default:
            print("\"Even the horses look strange. They don't want to be mounted anymore.\"")
        }
    }
    
    func observe () -> Void{
        print("The Ghosts habits are as unremarkable as ever—eating, drinking, and resting in his own peculiar way. His ability to pass through walls often makes him frustratingly elusive. But one thing stands out: the Queen fears him, visibly and profoundly. Whatever the connection between them is, it is not one of friendship.\n")
        if (player.name != "Queen"){
            self.canHelp = true
        }
    }
    func command () -> Void{
        self.canHelp = true
    }
}
