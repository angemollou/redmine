class AddProjectExpectedOutcomes < ActiveRecord::Migration[6.1]
  def change
    add_column :projects, :expected_outcomes, :text, :null => true, :default => nil
  end
end
