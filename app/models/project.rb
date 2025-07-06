class Project < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :state, inclusion: { in: %w[draft open completed closed] }
end
