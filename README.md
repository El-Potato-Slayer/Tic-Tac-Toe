# Tic-Tac-Toe
Tic-Tac-Toe is a very popular game, which consists of making a sequence of three symbols in either a row, column or diagonal in a 3x3 board.

# How to play:
1. Select the first player's name.
2. The first player gets to choose which sign they want to use; This should only be one character.
3. Select the second player's name, following the instruction given on step 1. The names should be unique.
4. The second player gets to choose a sign but it has to be different from the first player's sign.
5. The game will begin. The Tic-Tac-Toe board will be printed with empty rows and columns.
6. To win this game one player must make a sequence of three signs either on rows, columns or diagonals.
7. The selected player gets to choose the position where they want to place their sign, by inputting rows and colums. The input should be equal to or in between 1 to 3 integer values.
8. After that, the coordinates will be validated and recorded. Afterwards, the second player will be selected to take a turn.
9. The selected position can't be chosen twice;
10. The game will take turns until a player wins or no more positions are available on the board, in this case it will be a draw!

## Game-Instruction:

This is a tic-tac-toe game built with ruby and oop principles 

    In this project, all the logic and manipulation is put in the files inside lib folder except for these that require consistant outputs.

    ---------------------------------------------------------------------------------------------------------------------

    In this game there are 4 main files 

    1- main.rb: This file is responsible for getting validated inputs from the user, outputting messages, and calling all the required methods.
    2- player.rb: This file is responsible for storing player variables such as (name, sign).
    3- board.rb: This file is responsible for the creating the board, and applying the coordinates.
	  4- tictactoe.rb: This file is responsible for the game logic, validations, comparisions and board manipulation.

    ---------------------------------------------------------------------------------------------------------------------

    The game consists of 6 steps:
    1- get the players' names and validate that they are unique.
    2- get player one's sign and validate that it's a character.
    3- get player two's sign and validate that it's a character and unique from player one's sign.
    4- display the board and ask for a move.
    5- validating the given move by checking that the coordinates are not already taken and that they are equal to or between 1-3. This process runs for both players.
    6- checks for the win conditions. If any player wins, it will display the player that won, else it will display "it's a draw".

## Built With

- Ruby
- VS Code

## Getting Started

### Prerequisites

To get this project up and running, you must already have ruby installed on your computer.

### Installation

**To get this project set up on your local machine, follow these simple steps:**

1. Open Terminal.
2. Navigate to your desired location to download the contents of this repository.
3. Copy and paste the following code into the Terminal:
    git clone https://github.com/El-Potato-Slayer/Tic-Tac-Toe
4. Hit enter.
5. Once the repository has been cloned, navigate inside the repository and type:
    bin/main.rb
    This will run the game and you will be able to play it using the terminal.
6. Have fun!

## Author Details::

## Author 1
👤 **Chad van Wyk**

- Github:[@El-Potato-Slayer](https://github.com/El-Potato-Slayer)
- LinkedIn:[@Chad Van Wyk](https://www.linkedin.com/in/chad-van-wyk-4228b21a6/?originalSubdomain=za)
- E-mail: <a href="mailto:leighchad.cl@gmail.com?subject=Whaddup Chad!">Email</a>
- Twitter:[@elpotatoslayer](https://twitter.com/elpotatoslayer)


## Author 2
👤 **Lamia Sristy**

- Github: [@LamiaSristy](https://github.com/LamiaSristy)
- Linkedin: [@LamiaSristy](https://www.linkedin.com/in/lamia-hemayet-sristy/)
- E-mail: <a href="mailto:lamiasristy@gmail.com?subject=Hello Lamia!">Email</a>  
- Twitter: [@LamiaSristy](https://twitter.com/lsristy1)


## Show your support

Give ⭐ Star me on GitHub — it helps!

## 📝 License

This project is [MIT](lic.url) licensed.    
