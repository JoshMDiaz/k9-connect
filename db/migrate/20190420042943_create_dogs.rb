class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      t.integer :user_id
      t.string :name
      t.string :gender
      t.string :breed
      t.boolean :papered
      t.boolean :registered
      t.text :description
      t.date :age

      t.timestamps
    end
  end
end
