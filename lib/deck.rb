
# deck.rb

require_relative 'card'

class Deck
attr_accessor :deck
  def initialize
    @deck = []
    [:hearts, :spades, :clubs, :diamonds].each do |suit|
      (1..13).each do |value|
        card = Card.new(value,suit)
        @deck << card
      end
    end 
  end

  def draw
    # returns a card
    hand = @deck.sample
    @deck.delete(hand)
    return hand  
  end

  def shuffle
    # shuffles the deck
    @deck = @deck.shuffle
    return @deck
  end

  def count 
    counter = @deck.length
    return counter
  end
end
