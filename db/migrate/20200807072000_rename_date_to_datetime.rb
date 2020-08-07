class RenameDateToDatetime < ActiveRecord::Migration[6.0]
  def change
    rename_column :bookings, :date, :date_time
  end
end
