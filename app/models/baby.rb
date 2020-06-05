class Baby < ApplicationRecord
    has_many :activity_logs, dependent: :destroy

    validates :name, presence: true
    validates :birthday, presence: true
    validates :mothers_name, presence: true
    validates :fathers_name, presence: true
    validates :address, presence: true
    validates :phone, presence: true
end
