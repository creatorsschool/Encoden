class User < ActiveRecord::Base
  include Clearance::User
  mount_uploader :avatar, AvatarUploader
  has_many :payments
  has_many :courses, through: :payments, dependent: :destroy
  has_many :taught_courses, class_name: "Course"
end
