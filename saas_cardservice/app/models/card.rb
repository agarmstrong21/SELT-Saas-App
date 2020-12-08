class Card < ApplicationRecord
  belongs_to :pile

  # Creating Card method that will create a card with a suit, value, and pile it belongs to.
  def self.create_card!(i)
    possible_suits = %w[D S H C]
    possible_values = %w[A 2 3 4 5 6 7 8 9 10 J Q K]
    is_suit = false
    is_value = false
    is_suit = true if possible_suits.include? i[:suit]
    is_value = true if possible_values.include? i[:value]

    if is_value && is_suit
      cards = Card.where(pile_id: i[:pile].id)
      i[:position] = cards.length
      i[:image] = "#{i[:value]}#{i[:suit]}.png"
      Card.create!(i)
    end
  end
end
