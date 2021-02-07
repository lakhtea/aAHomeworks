class AddPassword2 < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :password
    add_column :users, :password, :string, default: nil
  end
end
