class ChangePasswordRequiredForUsers < ActiveRecord::Migration
  def change
    change_column_null :users, :encrypted_password, null: true
  end
end
