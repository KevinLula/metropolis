# metropolis
This is a train stimulation game made as our final project for our APCS class at Stuyvesant. The simulation allows for the user to extend lines and create different railways to different stations along the map and view the trains traversal across its respected line.

## Overview
The train stimulation game is based off the game Mini Metro by the New Zealand game studio DinoPoloClub.

## Devlog
- [x] Begin Project
- [x] Create MVP
- [x] Add interactivity
- [ ] Create main menu
- [ ] Use different pathfinding algorithms for the people
- [ ] Create population density maps
- [x] Create trigger factors
- [ ] Create (optional) AI
- [ ] Code coverage
- [ ] Licensing
- [x] README & devlog

- Thursday June 1st - Kevin learned how to make a clock by rotating a circle and rectangle.
- Friday June 2nd - did work on Station and People classes
- Monday June 5th - continued work on basic classes. Jonathan further burnished the station class, added the World class, and added the People class.
- Friday June 9th - the lines are now clickable
- Saturday June 10th - the lines could be drawn and extended to different stations on the canvas
- Sunday June 11th - The lines are different colors when they first spawn but remain the same if extended. A train spawns along each line traversing the path of the line and coming back when the end of that line color is reached. Different stations were added to increase the game difficulty as well as including an upgrade table to show the user their possibilities at improving their subway. 
## Features
The game beings with the user having 3 railways to use to create the start of their subway system. The user is unable to extend lines until these initial railways are used to account for the daily additions of one of five different types of stations. Afterwords the user can extend lines across each station to view the train movement across each line to the designated stations. Upgrades to the subway lines as well as people spawning at stations were not included therefore the game is a simulation of train movement. Though there is a screen for which the viewer may see the upgrades they would have had available to them (as new ones are made available each 14 days) giving the user a tunnel, extra train for their line, or an extra train car to increase the trains capacity. 
## Operating the Game
- At the start of the game the player has 3 railways that he/she can use to account for the first few stations
- When the first available railways are used up the player can extend pre-existing railways by choosing which line at each station to extend
- The choices of which line to choose is made by releasing any button to increment the choice of which line in each stations private list to choose from (if a button is not released 0 or the first line on the stations list will be the default choice)
- If the player wishes to change their mind holding the button r will reset their choice when drawing the line and will give them the default choice 0. Though when released will increment the choice by 1.
- Incrementing the choice past the number of lines that a stattion has stored will crash the game so it is suggested to press 'r' if mistakes were made
- the bottom middle of the screen has a white dot that when toggled (clicked) the user can see what is available to them to use on their board.
- When drawing the lines be sure to aim for the upper left corner of the shapes except for the circle considering that is where they are drawn.
## Authors
Jonathan Wong and Kevin Lula
