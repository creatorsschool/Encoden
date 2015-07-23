class CreateCoursesTable < ActiveRecord::Migration
  def change
  	create_table :courses do |table|
  		table.string :name
  		table.text :description
  		table.time :duration
  		table.float :price
  		table.timestamps
  	end
  end
end