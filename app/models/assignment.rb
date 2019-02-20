class Assignment < ApplicationRecord
  validates :title,  presence: true
  validates :todo,   presence: true
  validates :due_date, presence: true

  belongs_to :user, optional: true
  has_one :editor
  has_one_attached :image
  has_one_attached :file

  FILE_VALIDATIONS = {
    content_type: ["application/pdf"],
    max_size: 5.megabytes,
    min_size: 1.kilobyte
  }

  def is_pdf?
    self.content_type == "application/pdf"
  end
end
