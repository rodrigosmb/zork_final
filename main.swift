//
//  main.swift
//  zork
//
//  Created by Aluno 42 on 25/02/25.
//

import Foundation

let queen = Queen()
let king = King()
let princess = Princess()
let steward = Steward()
let ghost = Ghost()
let mage = Mage()

let starting_point = startingPoint()
let kitchen = Kitchen()
let mad_queens_bed_chamber = MadQueensBedChamber()
let main_hallway = MainHallway()
let royal_hall = RoyalHall()
let basement = Basement()

// Intro text
print("""
The sun hangs pale in the sky, its light struggling to reach the cold stone of the castle walls. A strange stillness lingers, as if the very air hesitates to move. The servants whisper of unease — of sleepless nights and distant murmurs seeping through the halls.

It began with a guest.

Wildrin, a foreign friend of the Queen, arrived without notice yet left a presence that refused to fade. She and the Queen exchanged gifts, and soon after, the castle began to change. Rooms feel unfamiliar. Mirrors no longer reflect just what stands before them.

No one remembers falling asleep. Yet, here they are — waking in places they do not recall, beneath a sky that seems dimmer than it should be.

The castle is waiting. And the day has only just begun.
""")

print("""
      Welcome to our 'game', please select your character by typing its number!\n\n
      1 - King\n
      Physical health: \(king.physicalHealth)\n
      Mental health: \(king.mentalHealth)\n\n
      
      2 - Princess\n
      Physical health: \(princess.physicalHealth)\n
      Mental health: \(princess.mentalHealth)\n\n
      
      3 - Steward\n
      Physical health: \(steward.physicalHealth)\n
      Mental health: \(steward.mentalHealth)\n\n
      
      4 - Ghost\n
      Physical health: \(ghost.physicalHealth)\n
      Mental health: \(ghost.mentalHealth)\n\n
      
      5 - Mage\n
      Physical health: \(mage.physicalHealth)\n
      Mental health: \(mage.mentalHealth)\n\n
      """)

var nextt = ""
var optionCharacter = readLine()
var mainMenu:Bool = true
var player: Character = King()
repeat{
    switch optionCharacter {
    case "1":
        print("\nYou chose King!\n\n Press Return to continue ")
        if let next = readLine(){
            nextt = next
        }
        player = King()
        starting_point.LocalText(player: player)
        mainMenu = false
    case "2":
        print("\nYou chose Princess!\n\n Press Return to continue")
        if let next = readLine(){
            nextt = next
        }
        player = Princess()
        starting_point.LocalText(player: player)
        mainMenu = false
    case "3":
        print("\nYou chose Steward!\n\n Press Return to continue")
        if let next = readLine(){
            nextt = next
        }
        player = Steward()
        starting_point.LocalText(player: player)
        mainMenu = false
    case "4":
        print("\nYou chose Ghost!\n\n Press Return to continue")
        if let next = readLine(){
            nextt = next
        }
        player = Ghost()
        starting_point.LocalText(player: player)
        mainMenu = false
    case "5":
        print("\nYou chose Mage!\n\n Press Return to continue")
        if let next = readLine(){
            nextt = next
        }
        player = Mage()
        starting_point.LocalText(player: player)
        mainMenu = false
    default:
        print("\nPlease, choose one existing character by typing it's number\n")
        optionCharacter = readLine()
    }
}while(mainMenu)

if let next = readLine(){
    nextt = next
}

var currentLocation = "Starting point"
var consciousnessLvl = 0
var alive = true
var queenActive = true
var lightsOn = true
var puzzleSolver = false
var princessCured = false
var timeOfDay = 12
var previousHealth = player.physicalHealth

while(alive) {
    if (player.mentalHealth <= 0 || player.physicalHealth <= 0){
        alive = false
        break
    }
    if (queenActive){
        print("A screeching women´s voice is heard: ")
        queen.rage(timeShift: timeOfDay)
        if (player is Ghost){
            if (timeOfDay < 6 || timeOfDay > 18){
                print("\nIt is night time, and the raging queen runs towards you!")
                print("The queen tried to hit you, but could not since you aren't a physical being. Confused, she ran away.")
            }
        }
        else{
            if (timeOfDay < 6 || timeOfDay > 18){
                print("\nIt is night time, and the raging queen runs towards you!")
                previousHealth = player.physicalHealth
                player.physicalHealth -= queen.damageFromAttack()
                print("The queen caused \(previousHealth - player.physicalHealth) physical damage and ran away.")
            }
        }
        if let next = readLine(){
            nextt = next
        }
    }
     
    if (currentLocation == "Starting point"){
        if (starting_point.HasBeenHere == false){
            starting_point.presence()
        }
        timeOfDay = (timeOfDay + runMenuChoices()) % 24
    }
    else if (currentLocation == "Royal hall"){
        if (royal_hall.HasBeenHere == false){
            royal_hall.presence()
            royal_hall.LocalText()
        }
        timeOfDay = (timeOfDay + runMenuChoices()) % 24
    }
    else if (currentLocation == "Mad queen's bedchamber"){
        if (mad_queens_bed_chamber.HasBeenHere == false){
            mad_queens_bed_chamber.presence()
            mad_queens_bed_chamber.LocalText()
        }
        timeOfDay = (timeOfDay + runMenuChoices()) % 24
    }
    else if (currentLocation == "Kitchen"){
        if (kitchen.HasBeenHere == false){
            kitchen.presence()
            kitchen.LocalText()
        }
        timeOfDay = (timeOfDay + runMenuChoices()) % 24
    }
    else if (currentLocation == "Main hallway"){
        if (main_hallway.HasBeenHere == false){
            main_hallway.presence()
            main_hallway.LocalText()
        }
        timeOfDay = (timeOfDay + runMenuChoices()) % 24
    }
    else if (currentLocation == "Basement"){
        if (basement.HasBeenHere == false){
            basement.presence()
            basement.LocalText()
        }
        if runMenuChoices() == 0{
            break
        }
        timeOfDay = (timeOfDay + runMenuChoices()) % 24
    }
    
    // Show player's life
    if let next = readLine(){
        nextt = next
    }
    if (player.physicalHealth <= 0){
        player.physicalHealth = 0
    }
    if (player.mentalHealth <= 0){
        player.mentalHealth = 0
    }
    print("""
          \n=========================================
          Current player stats:\n
          Physical health: \(player.physicalHealth)
          Mental health: \(player.mentalHealth)\n
          Current time of day: \(timeOfDay)h
          =========================================\n
          """)
    if let next = readLine(){
        nextt = next
    }
}
if (player.mentalHealth <= 0 || player.physicalHealth <= 0){
    print("Without its last challenger to stand in its way, the evil spread unchecked through the castle. Shadows crept into every hall, twisting stone and soul alike. The Queen was lost, the halls fell silent, and soon, none remained to remember what once was.\n\nIndeed, darkness had won.")
}

