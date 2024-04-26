class AddProjectTimeToImpact < ActiveRecord::Migration[6.1]
  def change
    add_column :projects, :time_to_impact, :string, :null => true, :default => nil
  end
end
