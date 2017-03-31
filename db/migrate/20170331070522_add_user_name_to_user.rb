class AddUserNameToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :user_name, :string
    add_index :users, :user_name, unique: true
    add_reference :users, :user, foreign_key: true
  end
end
