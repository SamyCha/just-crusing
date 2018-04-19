class CreateBoats < ActiveRecord::Migration[5.1]
  def change
    create_table :boats do |t|
      t.string :name
      t.string :country
      t.string :board
      t.string :itinerary

      t.timestamps
    end
  end
end
