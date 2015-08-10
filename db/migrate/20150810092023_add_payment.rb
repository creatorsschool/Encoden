class AddPayment < ActiveRecord::Migration
  def change
    create_table :payment do |t|
      t.integer :user_id
      t.integer :course_id
      t.timestamps
    end
  end
end
