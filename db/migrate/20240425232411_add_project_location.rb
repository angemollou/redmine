class AddProjectLocation < ActiveRecord::Migration[6.1]
  def change
    add_column :projects, :location, :text, :null => true, :default => nil
  end
end
