class User < ActiveRecord::Base
	has_many :payments
	has_many :courses, through: :payments
end
