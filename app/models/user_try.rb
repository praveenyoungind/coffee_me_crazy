class UserTry < ActiveRecord::Base
	attr_accessible :user_id,:coffee_type_id
	belongs_to :coffee_type,:counter_cache=>:people_tried
	belongs_to :user
end
