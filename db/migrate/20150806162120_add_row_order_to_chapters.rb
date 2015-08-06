class AddRowOrderToChapters < ActiveRecord::Migration
    def change
    add_column :chapters, :row_order, :integer
  end
end
