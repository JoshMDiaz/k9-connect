class AddEyesColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :dogs, :eyes, :string
  end
end
