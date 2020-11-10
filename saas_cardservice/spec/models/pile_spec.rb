require 'rails_helper'
require 'rails_helper'
require 'spec_helper'

RSpec.describe Pile, type: :model do
  describe 'creating piles' do
    context 'create a deck' do
      it 'should contain all 52 cards' do
        Pile.create_deck!
        counter = 0
        Pile.all.each do |pile|
          pile.cards.each do
            counter += 1
          end
        end
        expect(counter).to equal(52)
      end
    end
    context 'create a sink' do
      it 'should contain no cards' do
        pile = Pile.create_sink!
        expect(pile.cards.length).to equal(0)
      end
      it 'should contain Ace of Diamonds' do
        sink = Pile.create_sink!
        Card.create!({value: "Ace", suit: "Diamonds", pile: sink})
        counter = 0
        Pile.all.each do |pile|
          pile.cards.each do |card|
            if card.suit.eql? "Diamonds"
              counter += 1 if card.value.eql? "Ace"
            end
          end
        end
        expect(counter).to equal(1)
      end
    end
  end
end
