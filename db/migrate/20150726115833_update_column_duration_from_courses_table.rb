class UpdateColumnDurationFromCoursesTable < ActiveRecord::Migration
  def change
    remove_column :courses, :duration
    add_column :courses, :duration, :integer
  end
end
