class Course < ActiveRecord::Base
  include ActionView::Helpers::NumberHelper
	validates_presence_of :name, :description, :duration, :price
	has_many :payments
  has_many :chapters, dependent: :destroy
	belongs_to :user

  def formatted_price
    number_to_currency(price, locale: :pt)
  end
end
