class RemoveColumnFromBookings < ActiveRecord::Migration
  def change
    remove_column :bookings, :start_date
  end
end
