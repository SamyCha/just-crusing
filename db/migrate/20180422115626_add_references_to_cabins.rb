class AddReferencesToCabins < ActiveRecord::Migration[5.1]
  def change
    add_reference :cabins, :boat, foreign_key: true
  end
end
