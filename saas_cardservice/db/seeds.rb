# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Pile.create_pile!({ Name: 'Deck 1', pile_type: 'deck' })
Pile.create_pile!({ Name: 'Deck 2', pile_type: 'deck' })
Pile.create_pile!({ Name: 'Sink 1', pile_type: 'sink' })
Pile.create_pile!({ Name: 'Sink 2', pile_type: 'sink' })
Pile.create_pile!({ Name: 'Sink 3', pile_type: 'sink' })
Pile.create_pile!({ Name: 'Sink 4', pile_type: 'sink' })
Pile.create_pile!({ Name: 'Player Hand', pile_type: 'hand' })
