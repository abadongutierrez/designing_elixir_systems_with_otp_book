defmodule TicTacToe.BoardListTest do
  use ExUnit.Case # this is like extending ExUnit.Case
  alias TicTacToe.BoardList, as: Board

  test "new board" do
    assert Board.new() == [
      ["", "", ""],
      ["", "", ""],
      ["", "", ""]
    ]
  end

  test "get the content of a cell" do
    new_board = Board.new
    assert Board.get(new_board, 1, 1) == ""
  end

  test "set the content of a cell" do
    new_board = Board.new
    new_board = Board.set(new_board, 1, 1, "X")
    assert Board.get(new_board, 1, 1) == "X"
  end

  test "test set whole row" do
    new_board = Board.new
    new_board = Board.set(new_board, 1, 0, "X")
    new_board = Board.set(new_board, 1, 1, "X")
    new_board = Board.set(new_board, 1, 2, "X")
    assert Board.get(new_board, 1, 0) == "X"
    assert Board.get(new_board, 1, 1) == "X"
    assert Board.get(new_board, 1, 2) == "X"
  end
end
