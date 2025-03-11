//
//  Steward.swift
//  zork
//
//  Created by Aluno 42 on 25/02/25.
//

import Foundation

class Steward: Character{
    init(){
        super.init(name: "Steward", mentalHelth: 40, physicalHealth: 80, friend: "Princess", enemy: "King", startingPoint: "Stables", canHelp: false)
    }
    
    override func talkToKing() -> Void { // enemy
        print("I have nothing to say to that stubborn man. All he ever does is look at me with disdain.")
    }
    
    override func talkToQueen() -> Void { // enemy
        let randomizer: Int = Int.random(in: 0...4)
        switch randomizer {
        case 1:
            print("\"When I ASK for you, you come to me, can't you understand?\"")
        case 2:
            print("\"Would you send for a warm bath for me, please? And hurry!\"")
        case 3:
            print("\"Steward, I want all candles in this castle to be kept lit nonstop. There will be no more dark in this place from now on.\"")
            player.consciousnessLevel += 1
        case 4:
            print("\"Whatever you do, don't get anywhere near my mirror - my precious mirror. What it contains is worth more the done whole Dynasty.\"")
            player.consciousnessLevel += 1
        default:
            print("\"Is it time for dinner already? No? Then why on Earth would a Steward bother me?\"")
        }
    }
    
    override func talkToMage() -> Void { // neutral
        let randomizer: Int = Int.random(in: 0...4)
        switch randomizer {
        case 1:
            print("\"Heavy? That's an understatement. It feels like the castle itself is watching us. Yesterday, I almost got grabbed by my mirror when changing.\"")
            player.consciousnessLevel += 1
        case 2:
            print("\"Wildrim's visit? Yes, I've had my suspicions. But what exactly did the Queen receive from her? Maybe there is some mistery in that too.\"")
        case 3:
            print("\"Strange mirrors? You're not the first to mention them. I need to investigate this further.\"")
        case 4:
            print("\"The basement... If even the servants refuse to go near it, then something truly sinister must be hiding there.\"")
            player.consciousnessLevel += 1
        default:
            print("\"Surviving? I thought a Steward was meant to keep the castle in order, not cower like the rest of us.\"")
        }
    }
    
    override func talkToPrincess() -> Void { // friend
        let randomizer: Int = Int.random(in: 0...4)
        switch randomizer {
        case 1:
            print("\"I hear them too, you know. The whispers. But if I mention it to anyone else, they'd call me paranoid.\"")
            player.consciousnessLevel += 1
        case 2:
            print("\"My mother barely speaks to me anymore. She spends hours staring at that mirror in her chamber... as if something inside it is staring back.\"")
            player.consciousnessLevel += 1
        case 3:
            print("\"I know you think the Queen has changed, Steward. So do I. But it's not just her. This entire castle feels... different.\"")
        case 4:
            print("\"A few days ago, when I passed by the basement door, I swear I heard a voice calling my name. But when I asked the guards, they pretended not to hear anything.\"")
            player.consciousnessLevel += 1
        default:
            print("\"You and I both know something is wrong here. But who would believe us?\"")
        }
    }
    
    override func talkToGhost() -> Void { // neutral
        let randomizer: Int = Int.random(in: 0...4)
        switch randomizer {
        case 1:
            print("\"Oh, so you *can* sense me? Good. That means you're not entirely blind like the other servants.\"")
        case 2:
            print("\"Grey hair, shaking hands… You feel the weight of this place, don't you? I did too, once.\"")
        case 3:
            print("\"The walls whisper to you as well? Ah, then you *are* listening. Tell me, Steward, what have they said?\"")
            player.consciousnessLevel += 1
        case 4:
            print("\"You walk as if you carry chains. Maybe you're not the only one trapped in this castle. I'd say the Queen is also trapped under some evil curse.\"")
            player.consciousnessLevel += 1
        default:
            print("\"Few in this castle have any real awareness, but you… you're closer to the truth than you realize.\"")
        }
    }
    func observe () -> Void{
        print("Of all the castles inhabitants, the Stewards life is the least predictable. He oversees the arrival and distribution of supplies, coordinates the servants work, and is always at the Kings disposal. Yet, from time to time, he vanishes without explanation. Perhaps its an illusion caused by his overwhelming workload… or perhaps, its something far more deliberate. No one can quite predict the Stewards next move.\n")
        if (player.name == "King"){
            self.canHelp = true
            print("You know however, that he will never help you, unless you command him to, since he does not like the sight of you.\n")
        }
    }
    func command () -> Void{
        self.canHelp = true
    }
}
