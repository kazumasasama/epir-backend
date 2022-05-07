class AddLatLonToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :lat, :decimal
    add_column :users, :lon, :decimal
  end
end
