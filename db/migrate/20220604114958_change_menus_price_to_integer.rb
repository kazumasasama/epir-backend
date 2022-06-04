class ChangeMenusPriceToInteger < ActiveRecord::Migration[7.0]
  def change
    change_column :menus, :price, :integer
  end
end
