class CreateRosterEntries < ActiveRecord::Migration
  def change
    create_table :roster_entries do |t|
      t.string :position
      t.references :roster
      t.references :player
      t.references :team

      t.timestamps
    end
    add_index :roster_entries, :roster_id
    add_index :roster_entries, :player_id
    add_index :roster_entries, :team_id
  end
end
