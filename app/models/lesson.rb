class Lesson < ActiveRecord::Base
  include RankedModel
  ranks :row_order
  belongs_to :chapter
  has_many :resources, dependent: :destroy
end
