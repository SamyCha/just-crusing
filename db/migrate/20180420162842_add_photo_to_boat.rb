class AddPhotoToBoat < ActiveRecord::Migration[5.1]
  def change
    add_column :boats, :photo, :string
  end
end
