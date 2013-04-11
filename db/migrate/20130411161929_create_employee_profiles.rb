class CreateEmployeeProfiles < ActiveRecord::Migration
  def change
    create_table :employee_profiles do |t|
      t.integer :employee_id, null: false
      t.text :content
      t.date :birthday

      t.timestamps
    end
    add_index :employee_profiles, :employee_id
  end
end
