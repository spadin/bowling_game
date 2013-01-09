require_relative "../lib/game"

module Bowling
  describe Game do
    it "calculates a gutter game" do
      game = Game.new
      20.times do
        game.roll 0
      end
      game.score.should be 0
    end

    it "calculates score after rolling all ones" do
      game = Game.new
      20.times do
        game.roll 1
      end
      game.score.should be 20
    end
  end
end
