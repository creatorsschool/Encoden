class AddPaidFieldForCoursesTable < ActiveRecord::Migration
  def change
    add_column :courses, :paid, :boolean
  end
end
