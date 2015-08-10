class AddRowOrderToLessons < ActiveRecord::Migration
  def change
    add_column :lessons, :row_order, :integer
  end
end
