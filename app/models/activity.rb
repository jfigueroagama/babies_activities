class Activity < ApplicationRecord
    has_many :activity_logs, dependent: :destroy

    validates :name, presence: true
    validates :description, presence: true
end
