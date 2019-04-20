class ChangeAgeColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :dogs, :age, :birthdate
  end
end
