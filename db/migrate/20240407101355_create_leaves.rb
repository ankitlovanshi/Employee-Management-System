class CreateLeaves < ActiveRecord::Migration[7.1]
  def change
    create_table :leaves do |t|
      t.date :start_date
      t.date :end_date
      t.text :reason
      t.belongs_to :employee

      t.timestamps
    end
  end
end
