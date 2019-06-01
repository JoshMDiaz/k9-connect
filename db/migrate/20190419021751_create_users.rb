class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :sub
      t.string :picture
      t.string :phone
      t.string :email
      t.string :state
      t.string :address
      t.string :zip
      t.string :city

      t.timestamps
    end
  end
end
