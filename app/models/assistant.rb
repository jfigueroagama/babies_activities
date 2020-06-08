class Assistant < ApplicationRecord
    has_many :activity_logs, dependent: :destroy

    validates :name, presence: true
    validates :address, presence: true
    validates :phone, presence: true
    validates :group, presence: true
end
