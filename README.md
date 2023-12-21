Tic-Tac-Toe Console Application in Dart
Overview
A simple, interactive console-based Tic-Tac-Toe game developed in Dart. It allows two players to play Tic-Tac-Toe on a 3x3 grid.

Features
-Game Board: Implements a 3x3 grid for the Tic-Tac-Toe game.
-Two-Player Gameplay: Supports two players, alternating turns between 'X' and 'O'.
-Input Validation: Ensures moves are valid and in empty cells.
-Win Conditions: Checks and declares a winner based on game rules.
-Draw Detection: Identifies and declares a draw if applicable.
-Game Loop: Manages the progression of the game.
-Restart Option: Allows restarting the game after completion.
-Getting Started
-To run the game:

Ensure you have Dart SDK installed.
Clone the repository to your local machine.
Navigate to the project directory.
Run the game using the command dart run.
How to Play
-The game prompts players to enter their moves in turn.
-Choose a cell by entering a number from 1 to 9.
-Player 1 is 'X' and Player 2 is 'O'.
-The game ends when there's a winner or a draw.
Code Structure
-main(): Initializes and runs the game loop.
-printBoard(List<String> board): Displays the game board.
-getPlayerMove(List<String> board, String player): Handles player moves.
-checkWin(List<String> board): Checks for winning conditions.
