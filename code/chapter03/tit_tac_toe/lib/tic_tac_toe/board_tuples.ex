defmodule TicTacToe.BoardTuples do
  def new do
    # New board using tuples to represent the data
    {
      {"", "", ""},
      {"", "", ""},
      {"", "", ""}
    }
  end

  def get(board, row, col) do
    board |> elem(row) |> elem(col)
  end

  def set(board, row, col, value) do
    new_row = board |> elem(row) |> put_elem(col, value)
    put_elem(board, row, new_row)
  end

end
