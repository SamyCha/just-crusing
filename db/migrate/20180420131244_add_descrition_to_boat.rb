class AddDescritionToBoat < ActiveRecord::Migration[5.1]
  def change
    add_column :boats, :description, :string
  end
end
