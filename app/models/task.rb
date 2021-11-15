class Task < ApplicationRecord
  validates :name, :description, :deadline, presence: true
  validates_inclusion_of :completed, in: [true, false]

  def checkmark
    completed? ? 'far fa-check-square' : 'far fa-square'
  end
end
