class User < ActiveRecord::Base

	has_secure_password
  
  	validates_presence_of :first_name
	validates_presence_of :last_name
	validates_presence_of :user_id	
	validates_uniqueness_of :user_id
	validates_presence_of :password, :on => :create
	validates_confirmation_of :password
	validates_presence_of :email
	validates_uniqueness_of :email
	
end
