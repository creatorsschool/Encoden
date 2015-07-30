class UpdatedLessons < ActiveRecord::Migration
  def change
      add_column :lessons, :chapter_id, :integer
  end
end
