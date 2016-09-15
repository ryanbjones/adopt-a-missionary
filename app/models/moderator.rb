class Moderator < ActiveRecord::Base
  # #
  # Validations
  #
  validates :first_name, :last_name, :email_address, :username, :password, :presence => true
end
