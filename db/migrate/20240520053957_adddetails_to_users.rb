class AdddetailsToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :age ,:integer 
    add_column :users, :status,:string
    add_column :users, :experience,:integer
    add_column :users, :bio,:text
    add_column :users, :work_summary,:text
    add_column :users, :mail,:string
  end
end
