class CreateUserIdInCourses < ActiveRecord::Migration
  def change
  	remove_column :users, :course_id
  	add_column :courses, :user_id, :integer
  end
end
