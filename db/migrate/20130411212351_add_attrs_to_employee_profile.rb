class AddAttrsToEmployeeProfile < ActiveRecord::Migration
  def change 
    change_table(:employee_profiles) do |t|
      t.integer :height, :age, :salary
      t.string :favorite_food
      t.string :favorite_day
    end
    add_attachment :employee_profiles, :photo
  end
end
