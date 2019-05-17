class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      t.references :user, foreign_key: true, index: true
      t.string :name
      t.string :gender
      t.string :eyes
      t.date :birthdate
      t.boolean :papered
      t.boolean :registered
      t.text :description

      t.timestamps
    end
  end
end
