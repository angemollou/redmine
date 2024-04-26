class AddProjectImpact < ActiveRecord::Migration[6.1]
  def change
    add_column :projects, :impact, :text, :null => true, :default => nil
  end
end
