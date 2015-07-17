class CreatePeopleTable < ActiveRecord::Migration
  def change
  	create_table :people do |table|
  		table.string :email, unique: true, null: false
  		table.string :name, null: false
  		table.string :password, null: false
  		table.string :sex
  		table.date :birth_date
  		table.string :qualification
  		table.string :nationality
  		table.boolean :is_teacher, null: false, default: false
  	end
  end
end
