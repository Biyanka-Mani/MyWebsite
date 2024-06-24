class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.string :username
      t.string :password
      t.string :phone
      t.date :dob
      t.string :address

      t.timestamps
    end
  end
end
