//
//  Personagem.swift
//  zork
//
//  Created by Aluno 42 on 25/02/25.
//

import Foundation

class Character{
    let name: String
    var consciousnessLevel: Int
    var mentalHealth: Int
    var physicalHealth: Int
    let friend: String
    let enemy: String
    let startingPoint: String
    var canHelp: Bool
    
    init(name: String, mentalHelth: Int, physicalHealth: Int, friend:
         String, enemy: String, startingPoint: String, canHelp: Bool){
        self.name = name
        self.consciousnessLevel = 0
        self.mentalHealth = mentalHelth
        self.physicalHealth = physicalHealth
        self.friend = friend
        self.enemy = enemy
        self.startingPoint = startingPoint
        self.canHelp = canHelp
    }
    
    func reflect() -> Void {
        switch self.consciousnessLevel {
        case 0:
            print("[The Queen has been acting weird lately, but I can't thing of a reason why.]")
        case 1:
            print("[Some weird things have been taking place at this castle. I'm starting to think the Queen can be not crazy, but possessed by something evil.]")
        case 2:
            print("[There is evil in this castle and I can feel it. The Queen acts even madder when is dark. Why is that?]")
        case 3:
            print("[The Queen is not the only one affected by this evil: even the servants are suffering. I need to get this story straight,]")
        case 4:
            print("[Somehow, the basement, the Queen's madness and those strange occurencies around mirros are connected. I'm sure about it. Maybe I should take a visit to the basement...]")
        case 5:
            print("[Surely there is some dark evil coming from the basement, but I can't get close to it when there is light around.]")
        default:
            print("[I need to get to the basement with the lights out, but first the Queen must be stopped somehow.]")
        }
    }
    func talkToGhost() -> Void{
        
    }
    func talkToKing() -> Void{
        
    }
    func talkToMage() -> Void{
        
    }
    func talkToPrincess() -> Void{
        
    }
    func talkToSteward() -> Void{
        
    }
    func talkToQueen() -> Void{
        
    }
}
