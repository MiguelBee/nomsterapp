class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_many :places
  has_many :comments
  
  def display_name
    "#{first_name.capitalize} #{last_name.capitalize}"
  end
  
  #validates :first_name, presence: true
  #validates :last_name, presence: true
  #validates :email, presence: true
end
