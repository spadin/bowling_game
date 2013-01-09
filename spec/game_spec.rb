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
  end
end
