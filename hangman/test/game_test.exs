defmodule GameTest do
  use ExUnit.Case

  alias Hangman.Game

  test "new_game returns structure" do
    game = Game.new_game()
    assert game.turns_left == 7
    assert game.game_state == :initializing
    assert length(game.letters) > 0
    assert Enum.all?(game.letters, &(&1 >= "a" && &1 <= "z"))
  end

end