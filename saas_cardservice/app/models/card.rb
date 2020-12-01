class Card < ApplicationRecord
  belongs_to :pile

  # Creating Card method that will create a card with a suit, value, and pile it belongs to.
  def self.create_card!(i)
    possibleSuits = ["Diamonds","Spades","Hearts","Clubs"]
    possibleValues = ["Ace","Two","Three","Four","Five","Six","Seven","Eight","Nine","Ten","Jack","Queen","King"]
    isSuit = false
    isValue = false
    isSuit = true if possibleSuits.include? i[:suit]
    isValue = true if possibleValues.include? i[:value]
    if isValue and isSuit
      cards = Card.where(pile_id: i[:pile].id)
      i[:position] = cards.length
      Card.create!(i)
    end
  end
end
