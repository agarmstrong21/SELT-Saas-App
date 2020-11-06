class CreatePiles < ActiveRecord::Migration[6.0]
  def change
    create_table :piles do |t|
      t.string :Name, null: false
      t.timestamps
    end
  end
end
