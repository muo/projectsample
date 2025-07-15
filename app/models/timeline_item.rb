class TimelineItem < ApplicationRecord
  belongs_to :project
  belongs_to :resource, polymorphic: true
end
