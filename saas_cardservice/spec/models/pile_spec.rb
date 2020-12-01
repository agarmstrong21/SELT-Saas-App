require 'rails_helper'
require 'rails_helper'
require 'spec_helper'

RSpec.describe Pile, type: :model do
  describe 'creating piles' do
    context 'create a deck' do
      it 'should contain all 52 cards' do
        Pile.create_pile!({Name: 'Deck1', pile_type: 'deck'})
        counter = 0
        Pile.where(Name: 'Deck1').each do |pile|
          pile.cards.each do
            counter += 1
          end
        end
        expect(counter).to equal(52)
      end
    end
    context 'create a sink' do
      it 'should contain no cards' do
        pile = Pile.create_pile!({Name: 'Sink1', pile_type: 'sink'})
        expect(pile.cards.length).to equal(0)
      end
      it 'should contain Ace of Diamonds' do
        sink = Pile.create_pile!({Name: 'Sink2', pile_type: 'sink'})
        Card.create!({value: 'Ace', suit: 'Diamonds', pile: sink})
        counter = 0
        Pile.where(Name: 'Sink2').each do |pile|
          pile.cards.each do |card|
            if card.suit.eql? 'Diamonds'
              counter += 1 if card.value.eql? 'Ace'
            end
          end
        end
        expect(counter).to equal(1)
      end
    end
    context 'create a hand' do
      it 'should contain no cards' do
        pile = Pile.create_pile!({Name: 'Hand1', pile_type: 'hand'})
        expect(pile.cards.length).to equal(0)
      end
      it 'should contain Ace of Spades' do
        hand = Pile.create_pile!({Name: 'Hand2', pile_type: 'hand'})
        Card.create!({value: 'Ace', suit: 'Spades', pile: hand})
        counter = 0;
        Pile.where(Name: 'Hand2').each do |pile|
          pile.cards.each do |card|
            if card.suit.eql? 'Spades'
              counter += 1 if card.value.eql? 'Ace'
            end
          end
        end
        expect(counter).to equal(1)
      end
    end
    context 'incorrect pile creation' do
      it 'should not allow you to make two piles named Pile1' do
        Pile.create_pile!({Name: 'Pile1', pile_type: 'deck'})
        Pile.create_pile!({Name: 'Pile1', pile_type: 'sink'})
        piles = Pile.where(Name: 'Pile1')
        expect(piles.length).to equal(1)
      end
      it 'should not allow you to make a pile with a blank name' do
        Pile.create_pile!({Name: '', pile_type: 'deck'})
        piles = Pile.where(Name: '')
        expect(piles.length).to equal(0)
      end
    end
  end
  describe 'moving cards' do
    context 'create a deck and a hand' do
      it 'should have 1 card in hand after first draw' do
        Pile.create_hand!(Name: 'Hand1', pile_type: 'hand')
        hand = Pile.find_by(Name: 'Hand1')
        Pile.create_deck!(Name: 'Deck1', pile_type: 'deck')
        deck = Pile.find_by(Name: 'Deck1')
        deck.move_card(hand.id)
        handlength = hand.cards.length
        expect(handlength).to equal(1)
      end
      it 'should have 51 cards in the deck after first draw' do
        Pile.create_hand!(Name: 'Hand1')
        hand = Pile.find_by(Name: 'Hand1')
        Pile.create_deck!(Name: 'Deck1')
        deck = Pile.find_by(Name: 'Deck1')
        deck.move_card(hand.id)
        decklength = deck.cards.length
        expect(decklength).to equal(51)
      end
    end
  end
  describe 'shuffle pile' do
    context 'shuffle deck' do
      it 'should move the cards around randomly' do
        Pile.create_deck!(Name: 'Deck', pile_type: 'deck')
        deck = Pile.find_by(Name: 'Deck')
        deck.shuffle_pile
        possible_suits = ['Diamonds','Spades','Hearts','Clubs']
        possible_values = ['Ace','Two','Three','Four','Five','Six','Seven','Eight','Nine','Ten','Jack','Queen','King']
        spot = 0
        is_changed = false
        possible_values.each do |value|
          possible_suits.each do |suit|
            card = Card.where(pile: deck).where(position: spot)
            is_changed = true unless card.pluck(:value).eql?(value) && card.pluck(:suit).eql?(suit)
            spot += 1
          end
        end
        expect(is_changed).to be_truthy
      end
    end
  end
end
