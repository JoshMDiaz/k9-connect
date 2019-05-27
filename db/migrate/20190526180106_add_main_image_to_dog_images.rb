class AddMainImageToDogImages < ActiveRecord::Migration[5.2]
  def change
    add_column :dog_images, :main_image, :boolean
  end
end
