function result = hasWon(board, player)
% hasWon: has player won on board?
% require: player = 'X' or 'O'
% require: board 3x3 matrix, with each element in ['X', 'O', '.']
% promise: result = true if player has won otherwise false

  winningLine = 3 * upper(player);
  % check columns
  if board( sum(board) == winningLine )
      result = true;
      return;
  end
  % check rows
  if board( sum(board, 2) == winningLine )
      result = true;
      return;
  end
  % check diagonals
  if sum(diag(board)) == winningLine
      result = true;
      return;
  end
  if sum(diag(fliplr(board))) == winningLine
      result = true;
      return;
  end
  result = false;
end
