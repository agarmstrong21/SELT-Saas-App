class Pile < ApplicationRecord
  has_many :cards, dependent: :destroy

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

  # Creating Sink method that will create a pile named 'Sink.' This will contain no cards until cards are added.
  def self.create_sink!
    Pile.create!({Name: 'Sink'})
  end

end
