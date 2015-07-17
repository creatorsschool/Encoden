class CreateLessonsTable < ActiveRecord::Migration
  def change
  	create_table :lessons do |table|
  		table.string :lesson_name, null: false
  		table.string :lesson_theme, null: false
  		table.text :lesson_description, null: false
  	end
  end
end
