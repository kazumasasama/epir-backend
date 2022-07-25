class DeleteDateTime < ActiveRecord::Migration[7.0]
  def change
    remove_column :business_times, :date, :date
    remove_column :business_times, :time, :time
    remove_column :events, :date, :date
    remove_column :events, :start, :time
    remove_column :events, :end, :date
  end
end
