class AddDateTime < ActiveRecord::Migration[7.0]
  def change
    add_column :business_times, :time, :datetime
    add_column :events, :start, :datetime
    add_column :events, :end, :datetime
  end
end
