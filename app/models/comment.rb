class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :project

  before_save :set_user_email

  private

  def set_user_email
    self.user_email = user.email if user.present?
  end
end
