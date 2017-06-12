# metropolis
This is a train stimulation game made as our final project for our APCS class at Stuyvesant.
## Overview
The train stimulation game is based off the game Mini Metro by the New Zealand game studio DinoPoloClub.
## Devlog
- [x] Begin Project
- [ ] Create MVP
- [x] Add interactivity
- [ ] Create main menu
- [ ] Use different pathfinding algorithms for the people
- [ ] Create population density maps
- [ ] Create trigger factors
- [ ] Create (optional) AI
- [ ] Code coverage
- [ ] Licensing
- [x] README & devlog

Thursday June 1st - Kevin learned how to make a clock by rotating a circle and rectangle.
Friday June 2nd - did work on Station and People classes
Monday June 5th - continued work on basic classes. Jonathan further burnished the station class, added the World class, and added the People class.
Friday June 9th - the lines are now clickable
Saturday June 10th - the lines could be drawn and extended to different stations on the canvas
Sunday June 11th - The lines are different colors when they first spawn but remain the same if extended. A train spawns along each line traversing the path of the line and coming back when the end of that line color is reached. Different stations were added to increase the game difficulty as well as including an upgrade table to show the user their possibilities at improving their subway. 
## Features
The single player starts off the game with 3 railways that he/she can place connecting any of the continously spawning stations. With each passing day a new station spawns which must be accounted for in some manner so that overcrowding does not occur. In order to account for stations lines must be extended to them so that the trains on that line can reach said station and assist the people of that station to get to their desired location. If a station does get overcrowded then the player will lose the game. Upgrades to the players subway system are given randomly every week. These upgrades either give the player a new railway, an additional train to place on any railway, or a train car to attach to a pre-existing traincar. The player can see what upgrades he/she has available by clicking the white dot located on the bottom half of the screen. The images represent the available railways, trains, and train cars (respectively left to right) that the player can use to benefit their subway system.
## Operating the Game
- At the start of the game the player has 3 railways that he/she can use to account for the first few stations
- When the first available railways are used up the player can extend pre-existing railways by choosing which line at each station to extend
- The choices of which line to choose is made by releasing the button c to increment the choice of which line in each stations private list to choose from (if c is not released 0 or the first line on the stations list will be the default choice)
- If the player wishes to change their mind holding the button r will reset their choice when drawing the line and will give them the default choice 0. Though when released will increment the choice by 1.
- Incrementing the choice past the number of lines that a stattion has stored will crash the game so it is suggested to press 'r' if mistakes were made
- the bottom middle of the screen has a white dot that when toggled (clicked) the user can see what is available to them to use on their board.
## Authors
Jonathan Wong and Kevin Lula
