class CreateUsersTable < ActiveRecord::Migration
	def change
		create_table :users do |table|
			table.string :email, unique: true, null: false
			table.string :name, null: false
			table.boolean :teacher, null: false, default: false
			table.integer :user_id
		end
	end
end
