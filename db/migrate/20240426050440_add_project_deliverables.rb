class AddProjectDeliverables < ActiveRecord::Migration[6.1]
  def change
    add_column :projects, :deliverables, :text, :null => true, :default => nil
  end
end
