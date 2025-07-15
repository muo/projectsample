class CreateStateChanges < ActiveRecord::Migration[7.2]
  def change
    create_table :state_changes do |t|
      t.references :project, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :old_state
      t.string :new_state

      t.timestamps
    end
  end
end
