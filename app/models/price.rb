class Price < ApplicationRecord
    belongs_to :user
    
    validates :name, presence: true
    validates :price, presence: true
    validates :start_time, presence: true
end
