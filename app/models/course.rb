class Course < ApplicationRecord
  validates :title, :description, presence: true
  validates :title, uniqueness: true

  def students_count
    [*1..30].sample
  end
end
