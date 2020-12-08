class Pile < ApplicationRecord
  has_many :cards, dependent: :destroy

  def self.create_pile!(params)
    @pile = Pile.find_by Name: params[:Name]
    if @pile.nil? && params[:Name] != ''
      if params[:pile_type] == 'deck'
        create_deck!(params)
      elsif params[:pile_type] == 'sink'
        create_sink!(params)
      elsif params[:pile_type] == 'hand'
        create_hand!(params)
        #else
        #flash[:warning] = 'Pile type does not exist created.'
      end
      #else
      #flash[:warning] = 'The pile name you entered is either empty or taken. Try again.'
    end
  end

  # Creating deck method that will create a pile named 'deck' This will contain all 52 cards needed for a full deck.
  def self.create_deck!(params)
    possible_suits = %w[D S H C]
    possible_values = %w[A 2 3 4 5 6 7 8 9 10 J Q K]
    deck = Pile.create!({ Name: params[:Name], pile_type: 'deck', visible: false })
    possible_values.each do |value|
      possible_suits.each do |suit|
        Card.create_card!({ value: value, suit: suit, pile: deck })
      end
    end
  end

  # Creating Sink method that will create a pile named 'Sink.' This will contain no cards until cards are added.
  def self.create_sink!(params)
    Pile.create!({ Name: params[:Name], pile_type: 'sink', visible: false })
  end

  def self.create_hand!(params)
    Pile.create!({ Name: params[:Name], pile_type: 'hand', visible: false })
  end

  def move_card(new_pile_id)
    card = cards.first
    card.update!(pile_id: new_pile_id)
  end

  def shuffle_pile
    list_of_cards = cards.to_a
    index = 0
    until list_of_cards.empty?
      current = list_of_cards.delete(list_of_cards.sample)
      card_to_update = Card.find(current.id)
      card_to_update.position = index
      card_to_update.save
      index += 1
    end
  end
end
