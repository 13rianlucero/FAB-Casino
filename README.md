# FAB Casino
iOS Application

***Team Members:***

| **NAME**                    | **EMAIL**                         |
| --------------------------- | --------------------------------- |
| Brian Lucero                | 13rianlucero@csu.fullerton.edu    |
| Angel Zambrano              | angelz@csu.fullerton.edu          |
| Fahad Alsowaylim            | fss@csu.fullerton.edu             |

## Introduction

- `FAB Casino` is a Casino themed, mobile game application on iOS. 
- The app user can play games, and walk around the virtual Casino. 
- The objective is to obtain more virtual chips(in-game currency), just like in any real-world casino. 
- Chips can be gained by playing and bidding in any of the three games.
- [Youtube Demo](https://youtu.be/DBmEFR_qsgE)

---------------------------------------------------
![Demo-part2](https://user-images.githubusercontent.com/47013770/159123744-40bce7e4-84f7-42ad-a683-b27081489156.gif)
---------------------------------------------------

| # | Goal                                                              | Implementation                                                              |
| - | ----------------------------------------------------------------- | --------------------------------------------------------------------------- |
| 1 | Identify a project that can be implemented in Swift.              | FAB Casino                                                                  |
| 2 | Write a design document that will guide the development of the project. | Included in Documentation folder                                      |
| 3 | Design and write code that makes appropriate use of fundamental programming constructs and data structures (e.g., expressions, conditions, loops, user-defined functions, primitive data types).                                       | each game of the 3 utilizes these programming constructs                    |
| 4 | Design and write code that makes appropriate use of object-oriented concepts (e.g., classes, objects, methods, composition, and inheritance).Write a design document that will guide the development of the project.                | each game makes use of classes and objects                                  |
| 5 | Design and write code that makes appropriate use of advanced programming concepts (e.g., error handling). | angels "roulette game" makes use of error handling, so that the user cannot type in a string when entering the bet amount                                                                                 |
| 6 | Write code that follows coding standards.                         | all of the files, follows the coding standards that we know of currently    |
| 7 | Write appropriate comments that help other developers understand and reuse code. | each file has a good amount of comments to explain to other programmers how to reuse or access and understand certain features                                                                                                       |
| 8 | Design unit tests to evaluate the project’s correctness and completeness. | Unit tests have been created for each of the 3 games by each of us, and some unit tests for the game overall                                                                                                                            |
| 9 | Analyze and interpret compilation errors, unit test results, and code behavior to debug code. | Much testing has taken place to make sure that the user wallet is functioning properly                                                                                                                                  |
| 10 | Write code that utilizes programming-language constructs and software libraries from documentation. | the group has researched into multiple libraries to make the complex features easier to create                                                                                                                 |

## Brainstorm
```
Overall App Idea Brainstorm: 
  ● Mobile app named: FAB Casino 
  ● Casino arcade room 
  ● Player has their own character, they can move their character around
    the casino environment, and walk up to a game and be able to play it 
  ● Games: blackjack (21), Slot Machine, Roulette wheel. 
  ● In-game currency: user will get a daily amt of chips, and then can win 
    some more chips from playing in any of the three games. 
  ● Name of app Ideas: 
      ○ Mafia 
      ○ Casino game 
      ○ FAB casino 
      ○ Mafino 
      ○ Nerd cave 
      ○ Dont let ur mom find out 
      ○ Palacio del tesoro
```

## Platform
```
iOS, built on xcode (storyboard, viewcontrollers, etc) 

Idea: 
   ● For now we have decided to stick with iOS. 
   
Final Platforms: 
  ● We will be only supporting iOS 
  ● Using xCode, swift language, etc. for this project since this is a swift class
```

## Team
```
Best way to contact you. Could be a team email list, the email addresses of each
member, the email of the group representative, or whatever makes the most sense. 
  ● The best way to contact us is probably through discord.
  ● Names & Emails:
    ○ Brian Lucero (13rianlucero@csu.fullerton.edu), 
    ○ Angel Zambrano (AngelZ@csu.fullerton.edu), 
    ○ Fahad Alsowaylim (Fss@csu.fullerton.edu)
```

## Background and Motivation
```
  ● (Angel) - really wanted to make games so making a bunch for this app sounds great. 
  ● (Brian) - I was inspired by GTA V and Lego Star Wars Videogame to make a mobile game
              that is very similar, for this project. Would feel proud enough to show 
              the game to friends and family once it is done.
  ● (Fahad) - I’m really excited to start working on this project, being that this is a 
              swift language class, getting a chance to use what we learn in class will 
              make sure the information we learn in class sticks in our brains, and maybe 
              later it becomes muscle memory.
```
## Features
### Initial Plan:
```
  ● We should aim to have 9 features at minimum, (9 weeks dev, 1 week testing) 
      1. screens 
      2. Casino environment / lobby 
      3. character animation for user / physics for environment and character 
      4. Games: blackjack (21), slot machine (lucky 7 theme), roulette, 
         logic / animations for the games 
      5. In-game currency: different wallet for each game 
      6. Lobby music 
```

### Realease Version
Full Demo - Youtube URL: https://youtu.be/DBmEFR_qsgE

```
Release Version Features List (12/7/2020): 
  1. Main lobby, Game menu animations (game tables, background) 
  2. Main character Animation (Mafia member) 
  3. Main character physics (move around tables & screen) 
  4. 3 different casino games 
      a. Roulette 
      b. BlackJack 
      c. SlotMachine 
  5. Individual game currency 
  6. Wallet connected between all 3 games 
  7. Check for Saved User Data 
      a. If first time, creates user profile containing wallet 
         information from any of the 3 games 
      b. If not first time, Loads previously saved wallet data 
  8. All Code Feature Requirements from the Project Guide 
```
---------------------------------------------------
![Demo-part1](https://user-images.githubusercontent.com/47013770/159123715-e4f13d97-699a-4a57-8647-7c8b44ee8b0e.gif)
---------------------------------------------------

## Schedule
- Created a 10-week schedule to guide the team’s progress.
- Last Updated: 12/07/2020 

| Week # | Initial Feature                             | Actual Finished Feature                                    |
| ------ | ------------------------------------------- | ---------------------------------------------------------- |
| 5      | Loading -> main menu -> sign in, UI screens | Main lobby, Game menu animations (game tables, background) |
| 6      | Casino environment / lobby                  | Main character Animation (Mafia member)                    |  
| 7      | character animation (user) / physics (envi) | Mafia character physics (move around tables & screen)      |
| 8      | Games: blackjack, slot machine              | Game Logic: Roulette, Blackjack, Slot Machine              |
| 9      | In-game currency: daily chips               | Game UI: Roulette, Blackjack, Slot Machine                 |
| 10     | Game Logic: for all games developed         | Game Unify: Roulette, Blackjack, Slot Machine              |
| 11     | Multiplayer/AppStore - Chat, voice          | Individual game currency                                   |
| 12     | Textures, Graphics cleanup.                 | Wallet connected between all 3 games                       |
| 13     | Unit testing, Storage.                      | Check for Saved User Data                                  |
| 14     | App Testing                                 | App testing, Clean up, Documentation, Presentation         |

----------------------------------------

![FAB-Casino](https://user-images.githubusercontent.com/47013770/159123678-11599cb1-9fc5-4c7b-aa0c-f1e88d7bce3a.jpg)
