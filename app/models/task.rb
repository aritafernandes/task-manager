class Task < ApplicationRecord
  belongs_to :user

  validates :description, presence: true

  validates :description, length: { maximum: 500 }

  enum status: {
    pending: 0,
    in_progress: 1,
    completed: 2
  }
  
end
