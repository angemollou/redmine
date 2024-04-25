class AddProjectSourceOfFunding < ActiveRecord::Migration[6.1]
  def change
    add_column :projects, :source_of_funding, :text, :null => true, :default => nil
  end
end
