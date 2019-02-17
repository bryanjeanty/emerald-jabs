class Assignment < ApplicationRecord
  validates :title,  presence: true
  validates :todo,   presence: true
  validates :due_date, presence: true

  belongs_to :user, optional: true
  has_one_attached :image
  has_one_attached :file
end
