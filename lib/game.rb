module Bowling
  class Game
    def initialize
      @rolls = []
    end

    def roll(pins)
      @rolls << pins
    end

    def score
      score = 0
      @rolls.each_with_index do |pins, index|
        score += pins
      end
      score
    end
  end
end
