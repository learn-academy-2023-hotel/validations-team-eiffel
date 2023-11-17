class CreateAddies < ActiveRecord::Migration[7.0]
  def change
    create_table :addies do |t|
      t.integer :street_number
      t.string :street_name
      t.string :city
      t.string :state
      t.integer :zip
      t.integer :account_id

      t.timestamps
    end
  end
end
