require 'rails_helper'
require 'spec_helper'

RSpec.describe Card, type: :model do
  describe 'creating cards' do
    context 'create a card' do
      it 'should create a seven of clubs' do
        sink = Pile.create_pile!({Name: 'Sink1', pile_type: 'sink' })
        card = Card.create_card!({value: "Seven", suit: "Clubs", pile: sink})
        expect (card.suit.eql? "Clubs") && (card.value.eql? "Seven")
      end
    end
    context 'try to create a card with bad values' do
      it 'should fail to create the thirteen of clubs' do
        sink = Pile.create_pile!({Name: 'Sink2', pile_type: 'sink'})
        card = Card.create_card!({value: "Thirteen", suit: "Clubs", pile: sink})
        expect card.nil?
      end
      it 'should fail to create the king of doggos' do
        sink = Pile.create_pile!({Name: 'Sink3', pile_type: 'sink'})
        card = Card.create_card!({value: "King", suit: "Doggos", pile: sink})
        expect card.nil?
      end
      it 'should fail to create a card with no values' do
        sink = Pile.create_pile!({Name: 'Sink4', pile_type: 'sink'})
        card = Card.create_card!({value: '', suit: '', pile: sink})
        expect card.nil?
      end
    end
  end
end
