class Assistant < ApplicationRecord
    has_many :activity_logs

    validates :name, presence: true
    validates :address, presence: true
    validates :phone, presence: true
    validates :group, presence: true
end
