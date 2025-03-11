//
//  Queen.swift
//  zork
//
//  Created by Aluno 12 on 27/02/25.
//

import Foundation

class Queen: Character {
    init() {
        super.init(name: "Queen", mentalHelth: 30, physicalHealth: 30, friend: "", enemy: "", startingPoint: "", canHelp: false)
    }
    
    func rage(timeShift: Int) -> Void {
        let randomizer: Int = Int.random(in: 0...13)
        if (timeShift >= 6 && timeShift <= 18) { // day shift
            switch randomizer {
            case 0:
               print("\"I AM THE QUEEN! SHOW RESPECT OR FACE MY WRATH!\"")
            case 1:
               print("\"THE TIME WILL COME FOR ALL TO ANSWER TO ME!\"")
            case 2:
               print("\"TREASON WILL NOT BE TOLERATED IN MY CASTLE!\"")
            case 3:
               print("\"TAKE THAT DIRTY SIGHT OFF ME! I'M ABOUT TO SCRATCH YOUR EYEBALLS OFF!\"")
            case 4:
               print("\"WHAT A GREAT DAY TO RUIN EVERYONE ELSE'S LIVES!\"")
            case 5:
               print("\"I DON'T FEEL LIKE BEING DISTURBED TODAY. PLEASE, MOVE AWAY FROM MY SIGHT!\"")
            case 6:
                print("\"ALL WILL BOW TO MY WILL — THERE IS NO ESCAPE!\"")
            case 7:
                print("\"DO NOT TEST MY PATIENCE, FOR I AM STILL THE QUEEN!\"")
            case 8:
                print("\"MAY THE COURT SEE THE CONSEQUENCES OF DISLOYALTY!\"")
            case 9:
                print("\"MY JUSTICE WILL REIGN — ALL WILL COWER BEFORE ME!\"")
            case 10:
                print("\"DO NOT THINK YOU CAN DEFY ME, EVEN IN DAYLIGHT!\"")
            case 11:
                print("\"THE KINGDOM IS MINE TO RULE — YOU WILL ALL OBEY!\"")
            case 12:
                print("\"I WILL NOT REST UNTIL MY WILL IS DONE!\"")
            default:
               print("\"LOOK INTO MY EYES AND KNOW YOU ARE IN THE PRESENCE OF ROYALTY!\"")
            }
        } else { // night shift
            switch randomizer {
            case 1:
                print("\"YOU DARE STAND IN MY WAY? ILL BURN THIS CASTLE TO THE GROUND!\"")
            case 2:
                print("\"NONE SHALL ESCAPE MY WRATH, NOT EVEN THE SHADOWS!\"")
            case 3:
                print("\"THE WALLS WHISPER MY NAME — PREPARE TO FALL!\"")
            case 4:
                print("\"I AM THE STORM THAT WILL TEAR YOUR SOUL ASUNDER!\"")
            case 5:
                print("\"COME FORTH, MY MINIONS OF DARKNESS, LET THEM FEEL YOUR HUNGER!\"")
            case 6:
                print("\"NO ONE SURVIVES THE FURY OF A BROKEN QUEEN!\"")
            case 7:
                print("\"I AM THE CURSE THAT WILL HAUNT YOU, THE MADNESS THAT WILL CONSUME YOU!\"")
            case 8:
                print("\"BEG, CRAWL, DIE... IT WON'T SAVE YOU FROM THE CURSE OF MY TOUCH!\"")
            case 9:
                print("\"MY HEART IS STONE, MY SOUL IS FIRE—WITNESS YOUR DOOM!\"")
            case 10:
                print("\"FLEE IF YOU CAN, FOR THE NIGHT BELONGS TO ME NOW!\"")
            case 11:
                print("\"FEEL MY WRATH, FOR THE SPIRIT THAT BINDS ME CRAVES DESTRUCTION!\"")
            default:
                print("\"THE BLOOD OF THE INNOCENT WILL QUENCH MY THIRST!\"")
            }
        }
    }
    
    func damageFromAttack() -> Int {
        return Int.random(in: 1...10)
    }
}
