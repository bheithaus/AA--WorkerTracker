class CreateTeamMemberships < ActiveRecord::Migration
  def change
    create_table :team_memberships do |t|
      t.integer :employee_id, null: false
      t.integer :team_id, null: false

      t.timestamps
    end
    add_index :team_memberships, [:employee_id, :team_id], unique: true
  end
end
