class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :project

  before_save :set_user_email
  after_create :create_timeline_item

  private

  def set_user_email
    self.user_email = user.email if user.present?
  end

  def create_timeline_item
    TimelineItem.create!(project: project, resource: self)
  end
end
