class CreateChaptersTable < ActiveRecord::Migration
  def change
  	create_table :chapters do |table|
  		table.integer :chapter_order, null: false
  		table.string :chapter_name, null: false
  		table.text :chapter_description, null: false
  	end
  end
end
