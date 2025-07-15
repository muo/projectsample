class Project < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :state, inclusion: { in: %w[draft open completed closed] }

  has_many :comments, dependent: :destroy
  has_many :timeline_items, dependent: :destroy
end
