class StateChange < ApplicationRecord
  belongs_to :project
  belongs_to :user

  after_create :create_timeline_item

  private

  def create_timeline_item
    TimelineItem.create!(project: project, resource: self)
  end
end
