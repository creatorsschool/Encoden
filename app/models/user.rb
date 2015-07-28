class User < ActiveRecord::Base
	has_many :payments
	has_many :courses
end
