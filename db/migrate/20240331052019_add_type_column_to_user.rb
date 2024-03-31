class AddTypeColumnToUser < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :department, :integer, :default => 0
  end
end
