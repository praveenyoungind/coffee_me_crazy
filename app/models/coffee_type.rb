class CoffeeType < ActiveRecord::Base
	attr_accessible :bean_name,:discription,:location,:people_tried
    
	has_many :comments

	has_many :user_tries

	validates :bean_name,:presence=>true,:uniqueness=>true

end
