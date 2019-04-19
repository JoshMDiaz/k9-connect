class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :email
      t.string :address
      t.string :zip
      t.string :city

      t.timestamps
    end
  end
end
