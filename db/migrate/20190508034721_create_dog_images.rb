class CreateDogImages < ActiveRecord::Migration[5.2]
  def change
    create_table :dog_images do |t|
      t.string :dog_id
      t.string :url

      t.timestamps
    end
  end
end
