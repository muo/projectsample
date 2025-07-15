class CreateTimelineItems < ActiveRecord::Migration[7.2]
  def change
    create_table :timeline_items do |t|
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
