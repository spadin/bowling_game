module Bowling
  class Game
    def initialize
      @current_index = 0
      @rolls = Array.new(21) { 0 }
    end

    def roll(pins)
      @rolls[@current_index] = pins
      @current_index += 1
    end

    def score
      score = 0
      frame_index = 0
      10.times do |frame|
        if @rolls[frame_index] == 10
          score += 10 + @rolls[frame_index + 1] + @rolls[frame_index + 2]
          frame_index += 1
        elsif is_spare? frame_index
          score += 10 + @rolls[frame_index + 2]
          frame_index += 2
        else
          score += @rolls[frame_index] + @rolls[frame_index + 1]
          frame_index += 2
        end
      end
      score
    end

    def is_spare?(frame_index)
      @rolls[frame_index] + @rolls[frame_index + 1] == 10
    end
  end
end
