class Student < ApplicationRecord
  validates :first_name,  presence: true
  validates :last_name,   presence: true
  validates :email,   presence: true

  has_many :assignments

end
