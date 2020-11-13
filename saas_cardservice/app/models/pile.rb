class Pile < ApplicationRecord
  has_many :cards, dependent: :destroy

  def self.create_pile(params)
    if params[:pile_type] == 'deck'
      create_deck!(params)
    elsif params[:pile_type] == 'sink'
      create_sink!(params)
    else
      flash[:warning] = 'No pile created.'
    end
  end

  # Creating deck method that will create a pile named 'deck' This will contain all 52 cards needed for a full deck.
  def self.create_deck!(params)
    possible_suits = ['Diamonds','Spades','Hearts','Clubs']
    possible_values = ['Ace','Two','Three','Four','Five','Six','Seven','Eight','Nine','Ten','Jack','Queen','King']
    deck = Pile.create!({ Name: params[:Name], pile_type: 'deck', visible: false })
    possible_values.each do |value|
      possible_suits.each do |suit|
        Card.create!({ value: value, suit: suit, pile: deck })
      end
    end
  end

  # Creating Sink method that will create a pile named 'Sink.' This will contain no cards until cards are added.
  def self.create_sink!(params)
    Pile.create!({ Name: params[:Name], pile_type: 'sink', visible: false })
  end


end
