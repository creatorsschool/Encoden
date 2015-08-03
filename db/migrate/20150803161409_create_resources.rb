class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
			t.string :file
			t.integer :lesson_id
			t.timestamps
    end
  end
end
