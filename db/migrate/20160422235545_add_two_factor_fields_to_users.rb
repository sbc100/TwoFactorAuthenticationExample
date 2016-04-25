class AddTwoFactorFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :direct_otp, :string
    add_column :users, :direct_otp_expires_at, :datetime
    add_column :users, :backup_codes, :string, array: true
  end
end
