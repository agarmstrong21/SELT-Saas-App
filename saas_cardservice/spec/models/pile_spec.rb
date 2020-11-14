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
        Card.create!({value: "Ace", suit: "Diamonds", pile: sink})
        counter = 0
        Pile.where(Name: 'Sink2').each do |pile|
          pile.cards.each do |card|
            if card.suit.eql? "Diamonds"
              counter += 1 if card.value.eql? "Ace"
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
end
