class AddResourceToTimelineItems < ActiveRecord::Migration[7.2]
  def change
    add_reference :timeline_items, :resource, polymorphic: true, null: false
  end
end
