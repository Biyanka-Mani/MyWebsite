class CreateEnquiries < ActiveRecord::Migration[7.1]
  def change
    create_table :enquiries do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :country
      t.string :gender
      t.text :message
      t.boolean :subscription

      t.timestamps
    end
  end
end
