class CreateExcursions < ActiveRecord::Migration[5.1]
  def change
    create_table :excursions do |t|
      t.string :name
      t.string :address
      t.string :country
      t.float :interest

      t.timestamps
    end
  end
end
