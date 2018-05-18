class Contact < ApplicationRecord
    validates :email, :message, :subject, presence: true
    #attribute :email
    #attribute :message 
    #attribute :contact
    
    
end
