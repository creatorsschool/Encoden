class Chapter < ActiveRecord::Base
  include RankedModel
  ranks :row_order
	belongs_to :course
  has_many :lessons, dependent: :destroy

  scope :order_by_position, ->  { order(:row_order) }
end
