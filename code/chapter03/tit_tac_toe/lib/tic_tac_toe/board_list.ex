defmodule TicTacToe.BoardList do
  def new do
    # New board using list to represent the data
    [
      ["", "", ""],
      ["", "", ""],
      ["", "", ""]
    ]
  end

  def get(board, row, col) do
    get_in(board, [Access.at(row), Access.at(col)])
  end

  def set(board, row, col, value) do
    put_in(board, [Access.at(row), Access.at(col)], value)
  end

end
