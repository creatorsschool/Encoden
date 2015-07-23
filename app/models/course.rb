class Course < ActiveRecord::Base
	has_many :payments
	has_many :users, through: :payments
	has_many :chapters
end
