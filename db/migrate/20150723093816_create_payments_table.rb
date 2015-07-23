class CreatePaymentsTable < ActiveRecord::Migration
  def change
  	create_table :payments do |table|
  		table.date :payment_date, null: false
  		table.boolean :paid, default: false
  		table.integer :course_id
  		table.integer :user_id
  		table.timestamps
  	end
  end
end
