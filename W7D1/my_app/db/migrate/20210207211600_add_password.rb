class AddPassword < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :password, :string
    add_index :users, :password
  end
end
