require_relative "card"
require 'pry'


class Deck
  def initialize
    @card_deck = []
    Suits.each do |suit|
      Ranks.each do |rank|
        @card_deck << Card.new(rank, suit)
        end
    end
    @card_deck.shuffle!
  end

  def Deal!
    @card_deck.pop
  end
end
