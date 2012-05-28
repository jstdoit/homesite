class User < ActiveRecord::Base
	attr_accessor :password
  attr_accessible :email, :name, :password

	validates :name, :email, :presence => true

	validates :name, :length => 4..15

	before_save :encrypt_password_action

	private
		def encrypt_password_action
			self.encrypt_password = encrypt password
		end

		def encrypt pwd
			pwd
		end

end
