require_relative "card"
require_relative "deck"
require_relative "hand"




the_deck = Deck.new
player = Hand.new(the_deck)
computer = Hand.new(the_deck)

print "The Dealer deals you two cards:\n"
player.show_hand
print "The total score: #{player.show_score}\n"



players_turn = true
if player.show_score == 21
  print "Player has BLACKJACK!"
  players_turn = false
end

while players_turn == true
  print "Would you like to hit or stay? (H/S): "
  input = gets.chomp.downcase
  if input == 'h'
    player.hit!(the_deck)
    player.show_hand
    print "The total score: #{player.show_score}\n"
  elsif input == 's'
    print "Player stayed at: #{player.show_score}\n"
    players_turn = false
  else
    print "INVALID RESPONSE: "
  end

  if player.show_score > 21
    print "Player BUSTS\n"
    print "Dealer wins!\n"
    exit
  elsif player.show_score == 21
    print "Player has BLACKJACK\n"
    players_turn = false
  else
  end
end

print "\nThe dealer shows his hand\n"
computer.show_hand
print "The dealers score: #{computer.show_score}\n"

dealers_turn = true
while dealers_turn == true
  if computer.show_score < 17
    print "The dealer Hits!\n"
    computer.hit!(the_deck)
    computer.show_hand
  elsif computer.show_score > 21
    computer.show_score
    print "Dealer BUSTS!\n"
    dealers_turn = false
  elsif computer.show_score >= 17 && computer.show_score < 21
    print "Dealer stays at: #{computer.show_score}\n"
    dealers_turn = false
  elsif computer.score.to_i == 21
    print "Dealer has BLACKJACK\n"
    dealers_turn = false
  else
  end
end

if player.show_score > computer.show_score && player.show_score <= 21
  print "Player Wins!\n"
elsif computer.show_score > player.show_score && computer.show_score <= 21
  print "Dealer Wins!\n"
elsif player.show_score == computer.show_score
  print "It was a tie. PUSH!\n"
elsif computer.show_score > 21 && player.show_score <= 21
  print "Player Wins!\n"
else

end
