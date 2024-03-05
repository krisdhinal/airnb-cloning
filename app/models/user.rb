class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def name
    email_part = email.split('@')
    name_part  = email_part.first
    name_part.gsub('.', ' ').capitalize
  end 
end
