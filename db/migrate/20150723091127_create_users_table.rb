class CreateUsersTable < ActiveRecord::Migration
	def change
		create_table :users do |table|
			table.string :email, unique: true, null: false
			table.boolean :teacher, null: false, default: false
			table.integer :course_id
			table.timestamps
		end
	end
end
