class Moderator < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # #
  # Validations
  #
  validates :first_name, :last_name, :email_address, :username, :password, :presence => true
end
