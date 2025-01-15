List<List<int>> solveNQueens(int n) {
  List<List<int>> solutions = [];
  List<int> board = List.filled(n, -1);

  bool isSafe(int row, int col) {
    for (int i = 0; i < row; i++) {
      if (board[i] == col || board[i] - i == col - row || board[i] + i == col + row) {
        return false;
      }
    }
    return true;
  }

  void solve(int row) {
    if (row == n) {
      solutions.add(List.from(board));
      return;
    }
    for (int col = 0; col < n; col++) {
      if (isSafe(row, col)) {
        board[row] = col;
        solve(row + 1);
        board[row] = -1; // Backtrack
      }
    }
  }

  solve(0);
  return solutions;
}

void main() {
  int n = 4;
  var solutions = solveNQueens(n);
  print('Number of solutions: ${solutions.length}');
  solutions.forEach((solution) {
    print(solution);
  });
}
