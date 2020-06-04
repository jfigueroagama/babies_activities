class Baby < ApplicationRecord
    has_many :activity_logs, dependent: :destroy
end
