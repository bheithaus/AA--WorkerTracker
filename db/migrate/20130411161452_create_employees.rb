class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :email
      t.string :position
      t.integer :supervisor_id

      t.timestamps
    end
  end
end
