class RenameColumnFromBookings < ActiveRecord::Migration
  def change
    rename_column :bookings, :start_date_temp, :start_date
  end
end
