class CreateDogImages < ActiveRecord::Migration[5.2]
  def change
    create_table :dog_images do |t|
      t.references :dog, foreign_key: true, index: true
      t.string :url

      t.timestamps
    end
  end
end
