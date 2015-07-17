class CreateResourcesTable < ActiveRecord::Migration
  def change
  	create_table :resources do |table|
  		table.string :url
  		table.timestamps
  end
end
