class ActivityLog < ApplicationRecord
  belongs_to :baby
  belongs_to :assistant
  belongs_to :activity

  validates :start_time, presence: true
  validates :stop_time, presence: true
  validates :duration, presence: true
  validates :name, presence: true
  validates :comment, presence: true
end
