
# card.rb

class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    @value = value
    @suit = suit

   raise ArgumentError.new ("Invalid suit parameters") unless [:hearts, :spades, :clubs, :diamonds].include? @suit
   raise ArgumentError.new ("Invalid value parameters") unless (1..13).to_a.include? @value
  end

  def to_s
    if [1,11,12,13].include? value
      case value 
        when 11
          return "#{"Jack"} of #{suit.to_s}" 
        when 12 
          return "#{"Queen"} of #{suit.to_s}" 
        when 13 
          return "#{"King"} of #{suit.to_s}" 
        when 1 
          return "#{"Ace"} of #{suit.to_s}" 
      end
    end
    return "#{value} of #{suit.to_s}" 
  end
end
# card = Card.new(2, :diamonds)
# puts card.to_s