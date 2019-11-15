class AddDescriptionColumnsToItems < ActiveRecord::Migration[5.1]
  def change
  	add_column :todos, :id_project, :integer
  end
end
