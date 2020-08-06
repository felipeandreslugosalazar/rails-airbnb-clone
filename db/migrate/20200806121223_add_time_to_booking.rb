class AddTimeToBooking < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :time, :datetime
  end
end
