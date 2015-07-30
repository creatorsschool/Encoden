class CreateChaptersTable < ActiveRecord::Migration
  def change
  	create_table :chapters do |table|
			table.string :name
			table.text :description
			table.timestamps
		end
  end
end
