class User < ActiveRecord::Base
	has_many :payments, :courses
end
