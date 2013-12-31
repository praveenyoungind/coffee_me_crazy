class User < ActiveRecord::Base
	attr_accessible :email,:cuid
	has_many :user_try
end
