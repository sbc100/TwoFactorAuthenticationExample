class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :two_factor_authenticatable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one_time_password

  def send_two_factor_authentication_code
    puts ">>>>>>>>>>>>>>> code: #{otp_code}"
  end

  def need_two_factor_authentication?(request)
    true
  end
end
