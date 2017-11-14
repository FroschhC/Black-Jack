
Suits = ['♠','♣','♥','♦']
Ranks = ['2','3','4','5','6','7','8','9','10','J','Q','K','A']

class Card
  attr_reader :rank, :suit, :value
  attr_accessor :value

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
    @value =
        if ['J','Q','K'].include?(@rank)
          value = 10
        elsif ['A'].include?(@rank)
          value = 11
        else
          value = rank.to_i
        end
    end
end
