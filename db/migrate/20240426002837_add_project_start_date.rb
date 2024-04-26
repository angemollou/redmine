class AddProjectStartDate < ActiveRecord::Migration[6.1]
  def up
    change_table :projects do |t|
      t.date :_start_date, :null => false, default: -> { 'CURRENT_TIMESTAMP' }
    end
  end
  
  def down
    remove_column :projects, :_start_date
  end
end
