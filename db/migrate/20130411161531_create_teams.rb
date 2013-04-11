class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.integer :supervisor_id
      t.string :name, null: false

      t.timestamps
    end
    add_index :teams, :supervisor_id
  end
end
