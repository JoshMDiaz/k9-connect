class CreateDogBreeds < ActiveRecord::Migration[5.2]
  def change
    create_table :dog_breeds do |t|
      t.references :dog, foreign_key: true, index: true
      t.references :breed, foreign_key: true, index: true

      t.timestamps
    end
  end
end