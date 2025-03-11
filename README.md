# Zork-Inspired Text-Based Adventure Game

# Overview

This project is a text-based adventure game inspired by the classic Zork series. The game is set in a mysterious castle where strange events have been unfolding since the arrival of a mysterious guest, Wildrin. Players take on the role of one of several characters, each with unique abilities and perspectives, to uncover the dark secrets of the castle and restore peace.

# The game features:

    Multiple playable characters with unique abilities and storylines.

    A dynamic day-night cycle that affects gameplay.

    Puzzle-solving and combat mechanics.

    A rich narrative with branching dialogue options.

    Exploration of various locations within the castle, each with its own challenges and secrets.

# Characters

Players can choose from the following characters:

    ## King:

        Physical Health: 100

        Mental Health: 30

        Abilities: Can command other characters to assist him.

        Starting Point: Royal Bedchamber

    ## Princess:

        Physical Health: 40

        Mental Health: 80

        Abilities: Can heal herself completely once.

        Starting Point: Closet

    ## Steward:

        Physical Health: 80

        Mental Health: 40

        Abilities: Can create distractions to escape dangerous situations.

        Starting Point: Stables

    ## Ghost:

        Physical Health: 10,000,000 (effectively immortal)

        Mental Health: 50

        Abilities: Can pass through walls and avoid physical attacks.

        Starting Point: Attic

    ## Mage:

        Physical Health: 30

        Mental Health: 100

        Abilities: Can solve puzzles using magic (at the cost of mental health) and extinguish all lights in the castle.

        Starting Point: Library

# Gameplay Mechanics
## Exploration

Players can explore various locations within the castle, including:

    Starting Point (varies by character)

    Royal Hall

    Kitchen

    Mad Queen's Bedchamber

    Main Hallway

    Basement

Each location has unique interactions, puzzles, and potential dangers.
## Combat

Combat is turn-based and involves choosing between attacking, dodging, or attempting to escape. Different enemies require different strategies:

    Fire Goblin: Found in the Royal Hall.

    Mad Cook: Found in the Kitchen.

## Puzzles

The game features several puzzles, particularly in the Basement, which must be solved to progress. Puzzles include riddles, anagrams, and pattern recognition.
Dialogue

Players can interact with other characters through dialogue, which can provide clues, assistance, or deepen the story. Each character has unique dialogue options based on their relationships with others.
Time Management

Time passes as players perform actions, and certain events are tied to the time of day. For example, the Queen becomes more dangerous at night.
# How to Play

    Choose a Character: At the start of the game, select one of the five available characters.

    Explore the Castle: Move between different locations to uncover clues and solve puzzles.

    Interact with Characters: Talk to other characters to gain information or assistance.

    Solve Puzzles: Use your character's abilities to solve puzzles and progress through the story.

    Combat: Engage in combat with enemies when necessary, using your character's strengths to your advantage.

    Restore Peace: Uncover the dark secrets of the castle and defeat the evil that has taken hold.

# Code Structure

The project is organized into several Swift files, each representing a different aspect of the game:

    Character Classes: King.swift, Princess.swift, Steward.swift, Ghost.swift, Mage.swift

    Locations: kitchen.swift, mad_queensBedChamber.swift, mainHallway.swift, royalHall.swift, startingPoint.swift, basement.swift

    Game Mechanics: combat.swift, menuHudChoices.swift

    Main Game Loop: main.swift

# Requirements

    Swift: The game is written in Swift and requires a Swift e

    nvironment to run.

    Command Line Interface: The game is played through the command line, with text-based input and output.

# Running the Game

To run the game, simply compile and execute the main.swift file in a Swift environment. Follow the on-screen instructions to choose a character and begin your adventure.
Conclusion

This text-based adventure game offers a rich narrative experience with multiple characters, challenging puzzles, and a dynamic world. Players must use their wits and the unique abilities of their chosen character to uncover the secrets of the castle and restore peace.
