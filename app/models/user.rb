# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string(255)
#

class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation
	has_secure_password # method that comes with rails 3.0 to authenticate password

	#before_save { |user| user.email = email.downcase }
	before_save { self.email.downcase! }
	before_save :create_remember_token

	validates :name, presence: true, length: {maximum:50}
	VALID_EMAIL_REGEX = /([\w+.]+)@[a-z0-9\-.]+\.[a-z]+/i # FIXME
	validates(:email, presence: true, format: {with: VALID_EMAIL_REGEX}, 
		:uniqueness => { case_sensitive: false} )
	validates :password, presence: true, length: {minimum:6 }
	validates :password_confirmation, presence: true

	private
		
			def create_remember_token
				self.remember_token = SecureRandom.urlsafe_base64
			end
end
