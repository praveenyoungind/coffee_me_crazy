class Comment < ActiveRecord::Base
	attr_accessible :comment,:user_id,:coffee_type_id
	belongs_to :coffee_type
	belongs_to :user

	validates :comment,:presence=>true
end
