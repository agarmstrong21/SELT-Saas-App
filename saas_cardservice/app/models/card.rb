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
      case i[:value]
      when 'Ace'
        if i[:suit].equal?('Diamonds')
          i[:image] = "#{i[:value]}D.png"
        elsif i[:suit].equal?('Spades')
          i[:image] = 'AS.png'
        elsif i[:suit].equal?('Hearts')
          i[:image] = 'AH.png'
        elsif i[:suit].equal?('Clubs')
          i[:image] = 'AC.png'
        end
      when 'Two'
        if i[:suit].equal?('Diamonds')
          i[:image] = '2D.png'
        elsif i[:suit].equal?('Spades')
          i[:image] = '2S.png'
        elsif i[:suit].equal?('Hearts')
          i[:image] = '2H.png'
        elsif i[:suit].equal?('Clubs')
          i[:image] = '2C.png'
        end
      when 'Three'
        if i[:suit].equal?('Diamonds')
          i[:image] = '3D.png'
        elsif i[:suit].equal?('Spades')
          i[:image] = '3S.png'
        elsif i[:suit].equal?('Hearts')
          i[:image] = '3H.png'
        elsif i[:suit].equal?('Clubs')
          i[:image] = '3C.png'
        end
      when 'Four'
        if i[:suit].equal?('Diamonds')
          i[:image] = '4D.png'
        elsif i[:suit].equal?('Spades')
          i[:image] = '4S.png'
        elsif i[:suit].equal?('Hearts')
          i[:image] = '4H.png'
        elsif i[:suit].equal?('Clubs')
          i[:image] = '4C.png'
        end
      when 'Five'
        if i[:suit].equal?('Diamonds')
          i[:image] = '5D.png'
        elsif i[:suit].equal?('Spades')
          i[:image] = '5S.png'
        elsif i[:suit].equal?('Hearts')
          i[:image] = '5H.png'
        elsif i[:suit].equal?('Clubs')
          i[:image] = '5C.png'
        end
      when 'Six'
        if i[:suit].equal?('Diamonds')
          i[:image] = '6D.png'
        elsif i[:suit].equal?('Spades')
          i[:image] = '6S.png'
        elsif i[:suit].equal?('Hearts')
          i[:image] = '6H.png'
        elsif i[:suit].equal?('Clubs')
          i[:image] = '6C.png'
        end
      end
      Card.create!(i)
    end
  end
end
