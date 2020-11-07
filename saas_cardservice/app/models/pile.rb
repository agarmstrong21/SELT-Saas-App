class Pile < ApplicationRecord
  has_many :cards, dependent: :destroy
  def create(i)
    create! unless i.dig(:Name).nil?
  end

  def self.create_deck!
    possibleSuits = ["Diamonds","Spades","Hearts","Clubs"]
    possibleValues = ["Ace","Two","Three","Four","Five","Six","Seven","Eight","Nine","Ten","Jack","Queen","King"]
    deck = Pile.create!({:Name => 'Deck'})
    possibleValues.each do |value|
      possibleSuits.each do |suit|
        Card.create!({:value => value, :suit => suit, :pile => deck })
      end
    end
  end

end
