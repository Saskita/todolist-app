class Task < ApplicationRecord
  validates :name, :description, :deadline, :completed, presence: true
end
