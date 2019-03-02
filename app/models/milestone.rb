class Milestone < ApplicationRecord
  belongs_to :goal
  has_many :tasks, as: :taskable
end
