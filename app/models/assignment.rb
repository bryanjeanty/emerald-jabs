class Assignment < ApplicationRecord
  validates :title,  presence: true
  validates :todo,   presence: true
  validates :due_date, presence: true

  belongs_to :students, optional: true
  has_one_attached :image
end
