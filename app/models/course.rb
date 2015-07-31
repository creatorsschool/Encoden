class Course < ActiveRecord::Base
	validates_presence_of :name, :description, :duration, :price
	has_many :payments
  has_many :chapters
	belongs_to :user
end
