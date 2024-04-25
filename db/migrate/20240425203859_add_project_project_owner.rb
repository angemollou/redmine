class AddProjectProjectOwner < ActiveRecord::Migration[6.1]
  def change
    add_column :projects, :project_owner, :string, :null => true, :default => nil
  end
end
