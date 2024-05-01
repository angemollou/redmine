class ChangeIssueCategoriesNameLimitToNil < ActiveRecord::Migration[6.1]
  def self.up
    change_column :issue_categories, :name, :string, :limit => nil, :default => "", :null => false
  end
  
  def self.down
    IssueCategory.all.each {|category| category.update_attribute(:name, category.name[0,60])}
    change_column :issue_categories, :name, :string, :limit => 60, :default => "", :null => false
  end
end
