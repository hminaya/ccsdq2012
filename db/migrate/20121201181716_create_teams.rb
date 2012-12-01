class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :nombre
      t.integer :wins
      t.integer :losses

      t.timestamps
    end
  end
end
