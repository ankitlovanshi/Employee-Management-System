class RenameTableUserToEmployee < ActiveRecord::Migration[7.1]
  def change
    rename_table :users, :employees
  end
end
