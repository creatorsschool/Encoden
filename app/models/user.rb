class User < ActiveRecord::Base
  include Clearance::User
  mount_uploader :avatar, AvatarUploader
  has_many :payments
  has_many :courses, dependent: :destroy
end
