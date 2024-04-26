class AddProjectDueDate < ActiveRecord::Migration[6.1]
  def change
    add_column :projects, :_due_date, :date, :null => true, :default => nil
  end
end
