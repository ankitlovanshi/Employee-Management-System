class CreateStatuses < ActiveRecord::Migration[7.1]
  def change
    create_table :statuses do |t|
      t.date :date
      t.text :status
      t.belongs_to :employee, null: false, foreign_key: true

      t.timestamps
    end
  end
end
