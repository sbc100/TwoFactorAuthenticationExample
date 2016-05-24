# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

%w(dmitrii.golub@gmail.com test@test.com).each do |email|
  unless User.where(email: email).exists?
    u = User.create email: email, password: '12345678', password_confirmation: '12345678'
    u.save!
    # Uncomment to enable TOTP
    #u.create_otp_secret
    puts "Created #{email}, with password: 12345678 and otp_secret_key: #{u.otp_secret_key}"
  end
end

