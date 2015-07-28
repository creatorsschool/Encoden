class Course < ActiveRecord::Base
	has_many :payments
  has_many :chapters
	belongs_to :user
end
