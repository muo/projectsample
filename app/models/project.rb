class Project < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :state, inclusion: { in: %w[draft open completed closed] }

  has_many :comments, dependent: :destroy
  has_many :timeline_items, dependent: :destroy
  has_many :state_changes, dependent: :destroy

  before_update :track_state_change

  private

  def track_state_change
    if state_changed?
      StateChange.create!(
        project: self,
        user: Current.user,
        old_state: state_was,
        new_state: state
      )
    end
  end
end
