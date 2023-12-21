import 'dart:io';

void main() {
  List<String> board = List.filled(9, ' ');
  bool isPlayer1Turn = true;
  while (true) {
    printBoard(board);
    int move = getPlayerMove(board, isPlayer1Turn ? 'Player 1' : 'Player 2');
    board[move] = isPlayer1Turn ? 'X' : 'O';

    if (checkWin(board)) {
      printBoard(board);
      print(isPlayer1Turn ? 'Player 1 wins!' : 'Player 2 wins!');
      break;
    } else if (!board.contains(' ')) {
      printBoard(board);
      print('The game is a draw!');
      break;
    }

    isPlayer1Turn = !isPlayer1Turn;
  }
}

void printBoard(List<String> board) {
  print('''
 ${board[0]} | ${board[1]} | ${board[2]}
-----------
 ${board[3]} | ${board[4]} | ${board[5]}
-----------
 ${board[6]} | ${board[7]} | ${board[8]}
 ''');
}

int getPlayerMove(List<String> board, String player) {
  int move;
  do {
    stdout.write('$player, enter your move (1-9): ');
    move = int.tryParse(stdin.readLineSync() ?? '') ?? -1;
  } while (move < 1 || move > 9 || board[move - 1] != ' ');
  return move - 1;
}

bool checkWin(List<String> board) {
  const wins = [
    [0, 1, 2], [3, 4, 5], [6, 7, 8], // rows
    [0, 3, 6], [1, 4, 7], [2, 5, 8], // columns
    [0, 4, 8], [2, 4, 6]             // diagonals
  ];

  for (var win in wins) {
    if (board[win[0]] != ' ' &&
        board[win[0]] == board[win[1]] &&
        board[win[1]] == board[win[2]]) {
      return true;
    }
  }
  return false;
}
