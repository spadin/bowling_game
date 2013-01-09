require_relative "../lib/game"

module Bowling
  describe Game do
    let (:game) { Game.new }

    def roll_many(number_of_times, pins)
      number_of_times.times do
        game.roll pins
      end
    end

    it "calculates a gutter game" do
      roll_many(20, 0)
      game.score.should be 0
    end

    it "calculates score after rolling all ones" do
      roll_many(20, 1)
      game.score.should be 20
    end
  end
end
