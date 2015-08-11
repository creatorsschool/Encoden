class CreatePaymentsTable < ActiveRecord::Migration
  def change
  	create_table :payments do |table|
  		table.integer :course_id
  		table.integer :user_id
  		table.timestamps
  	end
  end
end
