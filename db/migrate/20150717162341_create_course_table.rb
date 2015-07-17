class CreateCourseTable < ActiveRecord::Migration
  def change
  	create_table :courses do |table|
  		table.string  :course_name, null: false
  		table.string :course_duration, null: false
  		table.text :course_description, null: false
  		table.string :course_price, null: false
  	end
  end
end
