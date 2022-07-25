class AddDateTime < ActiveRecord::Migration[7.0]
  def change
    add_column :business_times, :time, :time
    add_column :events, :start, :time
    add_column :events, :end, :time
  end
end
