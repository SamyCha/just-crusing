class AddStartPriceToBoats < ActiveRecord::Migration[5.1]
  def change
    add_column :boats, :price, :integer
  end
end
