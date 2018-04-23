class CreateCabins < ActiveRecord::Migration[5.1]
  def change
    create_table :cabins do |t|
      t.string :type
      t.string :size
      t.string :bed
      t.string :deck

      t.timestamps
    end
  end
end
