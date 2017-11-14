require_relative 'card'
require_relative 'deck'

class Hand
  attr_reader :the_hand, :the_deck, :score

  def initialize(deck)
    @the_hand =[deck.Deal!, deck.Deal!]
    @score = 0
  end

  def show_hand
    @the_hand.each do |card|
      print "#{card.rank} #{card.suit}\n"
    end
  end

  def show_score
    @score = 0
    @the_hand.each do |card|
      @score += card.value
      end
    if @score > 21
      aces = @the_hand.count { |card| card.rank == "A"}
        aces.times do
          @score -= 10
        if @score <= 21
          break
        end
      end
  end
  @score
end

  def hit!(deck)
    @the_hand << deck.Deal!
end
end
