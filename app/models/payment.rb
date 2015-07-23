class Payment < ActiveRecord::Base
	belongs_to :courses, :users
end