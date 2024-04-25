class AddProjectCaseForChange < ActiveRecord::Migration[6.1]
  def change
    add_column :projects, :case_for_change, :text, :null => true, :default => nil
  end
end
