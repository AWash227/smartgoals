class Milestone < ApplicationRecord
  belongs_to :goal
  has_many :tasks

  validates :goal_id, presence: true
  validates :title, presence: true, length: {minimum: 1, maximum: 140}
  validates :due_date, presence: true
end
