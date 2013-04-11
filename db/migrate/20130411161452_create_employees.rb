class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name, null: false
      t.string :email
      t.string :position
      t.integer :supervisor_id

      t.timestamps
    end
    add_index :employees, :supervisor_id
    add_index :employees, :name
  end
end
