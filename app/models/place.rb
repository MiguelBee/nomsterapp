class Place < ApplicationRecord
    
    belongs_to :user
    geocoded_by :address
    after_validation :geocode
    
    validates :name, :length => {minimum: 4} , presence: true
    validates :address, presence: true
    validates :description, presence: true
    #added for lesson 28
end
