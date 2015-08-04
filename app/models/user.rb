class User < ActiveRecord::Base
  include Clearance::User
  has_many :payments
  has_many :courses, dependent: :destroy
end
