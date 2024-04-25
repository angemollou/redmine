class AddProjectSector < ActiveRecord::Migration[6.1]
  def change
    add_column :projects, :sector, :string, :null => true, :default => nil
  end
end
