class CreatePaymentTable < ActiveRecord::Migration
  def change
  	create_table :payments do |table|
  		table.date :transaction_date, null: false
  		table.decimal :payment_fee
  	end
  end
end
