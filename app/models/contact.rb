class Contact < ApplicationRecord
  validates :email, :message, :subject, presence: true
end
