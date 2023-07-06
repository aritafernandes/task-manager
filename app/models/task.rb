class Task < ApplicationRecord
  belongs_to :user

  validates :description, presence: true

  validates :description, length: { maximum: 500 }

  enum status: {
    'To Do' => 0,
    'Doing' => 1,
    'Completed' => 2
  }
end
