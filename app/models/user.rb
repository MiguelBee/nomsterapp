class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :first_name, :last_name, :email, presence: true
         
  has_many :places
  has_many :comments
  
  def display_name
    "#{first_name.capitalize} #{last_name.capitalize}"
  end

end
