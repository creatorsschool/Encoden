class CreateLessons < ActiveRecord::Migration
  def change
      create_table :lessons do |table|
      table.string :name, null: false
      table.text :description
      table.timestamps
    end
  end
end
