//
//  basement.swift
//  zork
//
//  Created by Aluno 24 on 28/02/25.
//

import Foundation

class Basement{
    
    var HasBeenHere = false
    
    func presence () -> Void{
        if HasBeenHere == false{
            HasBeenHere = true
        }
    }
    func LocalText() -> Void{
        print("Damp air clings to ancient stone. The gate at the far end is locked, shifting its puzzle-like mechanisms at the slightest breeze. Beyond it, a mirror looms in darkness, its surface like ink. It starves for something... alive.")
    }
    
    func entrance_puzzle() -> Bool{
    let endString: String = "The gate bars suddenly bend on their own, making room for you to go through. Now, there are no obstacles between you and the cursed mirror."
        print("A gate blocks the entrance to the basement. There is a faint inscription covering all of it. The iscription reads:\n I live in the dark and thrive in the light. My prision is bound in glass, yet I escape with every crack. What holds me but never keeps me?\nAnswer: ")
        if(puzzleSolver){
            print("You used your special ability to solve the puzzle. In doing so, you suffered 25 mental damage.")
            player.mentalHealth -= 25
            puzzleSolver = false
            print(endString)
            return true
        }
        if let riddleAnswer = readLine(){
            let lower_riddleAnswer = riddleAnswer.lowercased()
            if (lower_riddleAnswer == "the mirror" || lower_riddleAnswer == "mirror"){
                print(endString)
                return true
            }
            else{
                return false
            }
        }
        return false
    }
    
    func final_puzzle1()-> Bool{
    let endString: String = "A faint crack slithers across the mirror — not of glass, but of darkness. The reflection dims, distorting slightly. A whisper — weak, almost pleading — fades into silence. The spirit stirs but does not yet fear."
        print("Solve the following anagram to proceed: tel rhtee eb ghilt\nAnswer: ")
        if(puzzleSolver){
            print("You used your special ability to solve the puzzle. In doing so, you suffered 25 mental damage.")
            player.mentalHealth -= 25
            puzzleSolver = false
            print(endString)
            return true
        }
        if let anagramAnswer = readLine(){
            let lower_anagramAnswer = anagramAnswer.lowercased()
            if (lower_anagramAnswer == "let there be light"){
                print(endString)
                return true
            }
            else{
                return false
            }
        }
        return false
    }
    
    func final_puzzle2()-> Bool{
    let endString: String = "The cracks spread, and the mirror flickers like a dying flame. Shapes twist within, no longer a true reflection. A frantic voice hisses: \"The light... must remain... You cannot snuff it out!\". The castle feels colder. The spirit is weakening."
        print("You notice that the border in front of you requires some kind of password in the form of coordinates. A light souce appears before your eyes and starts moving in the following pattern:\n\n")
        var n = 0, s = 0, e = 0, w = 0
        for _ in 1...8 {
            let randomizer: Int = Int.random(in:0...3)
            switch randomizer {
                case 0:
                    print("North...\n")
                    n += 1
                case 1:
                    print("South...\n")
                    s += 1
                case 2:
                    print("East...\n")
                    e += 1
                case 3:
                    print("West...\n")
                    w += 1
                default:
                    print("Did not move.\n")
            }
        }
        if(puzzleSolver){
            print("You used your special ability to solve the puzzle. In doing so, you suffered 30 mental damage.")
            player.mentalHealth -= 30
            puzzleSolver = false
            print(endString)
            return true
        }
        let final_position = [n - s, e - w]
        print("Final north position: ")
        if let northAnswerString = readLine(), let northAnswer = Int(northAnswerString) {
            if (n >= s){
                if (northAnswer != final_position[0]){
                    return false
                }
            }
            else{
                if (northAnswer != 0){
                    return false
                }
            }
        }
        else{
            return false
        }
        print("Final south position: ")
        if let southAnswerString = readLine(), let southAnswer = Int(southAnswerString) {
            if (s >= n){
                if (southAnswer != abs(final_position[0])){
                    return false
                }
            }
            else{
                if (southAnswer != 0){
                    return false
                }
            }
        }
        else{
            return false
        }
        print("Final east position: ")
        if let eastAnswerString = readLine(), let eastAnswer = Int(eastAnswerString) {
            if (e >= w){
                if (eastAnswer != final_position[1]){
                    return false
                }
            }
            else{
                if (eastAnswer != 0){
                    return false
                }
            }
        }
        else{
            return false
        }
        print("Final west position: ")
        if let westAnswerString = readLine(), let westAnswer = Int(westAnswerString) {
            if (w >= e){
                if (westAnswer != abs(final_position[1])){
                    return false
                }
            }
            else{
                if (westAnswer != 0){
                    return false
                }
            }
        }
        else{
            return false
        }
        print(endString)
        return true
    }
    
    func final_puzzle3()-> Bool{
        let endString: String = "The last light vanishes from the mirror. The spirit howls, its form now a warped shadow clawing at the darkness. The glass trembles, spilling shadows onto the floor. The spirit is exposed, its sanctuary destroyed."
        print("The final challenge, seems to be figuring out a secret 5 letter word by trial and error, placing the letters on a stone. Ten small lights shine above the rock, apparently indicating the number os chances to complete the task.\n")
        if(puzzleSolver){
            print("You used your special ability to solve the puzzle. In doing so, you suffered 40 mental damage.")
            player.mentalHealth -= 40
            puzzleSolver = false
            print(endString)
            return true
        }
        let secret_word = ["l","u","m","e","n"]
        var remainingTries = 10
        while(remainingTries != 0){
            print("\nTry a 5 letter word: ")
            if let hangmanAnswer = readLine(){
                let lower_hangmanAnswer = hangmanAnswer.lowercased()
                let charAnswer = Array(lower_hangmanAnswer)
                if charAnswer.count != secret_word.count {
                    print("You must type exactly 5 letters! You typed \(charAnswer.count).\n")
                    remainingTries -= 1
                    continue
                }
                var index = 0
                var failed = false
                for letter in charAnswer {
                    if (secret_word[index] == String(letter)){
                        print(letter, terminator: " ")
                    }
                    else{
                        print("_", terminator: " ")
                        failed = true
                    }
                    index += 1
                }
                if (failed == false){
                    print(endString)
                    return true
                }
            }
            print("\n")
            remainingTries -= 1
        }
        return false
    }
}
