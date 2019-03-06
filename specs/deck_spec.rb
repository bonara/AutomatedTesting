

require_relative 'spec_helper'

describe Deck do
  # Write tests for the Deck class.
  # What should you test?
    # 1.  Expected Behavior
    # 2.  Edge cases
  
  it "can be created" do 
    deck = Deck.new 
    expect(deck).must_be_instance_of Deck
  end

  it "can draw a card" do
    deck = Deck.new
    expect(deck.draw).must_be_instance_of Card
  end

  it "can count cards in a deck" do
    deck = Deck.new
    expect(deck.count).must_equal 52
  end

  it "can count correctly when a card is drawn" do
    deck = Deck.new
    deck.draw
    expect(deck.count).must_equal 51
  end
end
