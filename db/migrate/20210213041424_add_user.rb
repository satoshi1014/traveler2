class AddUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :name, :string
    add_column :users, :from, :string
    add_column :users, :age, :string
  end
end
