class AddTempToBooking < ActiveRecord::Migration
  def change
    add_column :bookings, :start_date_temp, :date
  end
end
