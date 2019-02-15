class Student < ApplicationRecord
  validates :first_name,  presence: true
  validates :last_name,   presence: true
  validates :email,   presence: true
  validates :password, presence: true

  has_many :assignments
  has_secure_password

end
