class Task < ApplicationRecord
  validates :name, :description, :deadline, presence: true
  validates_inclusion_of :completed, in: [true, false]
  scope :missed, -> { where(completed: false) }
  scope :passed, -> { where("deadline < ?" , DateTime.current) }
  scope :on_going, -> { where("deadline > ?" , DateTime.current) }
  def checkmark
    completed? ? 'far fa-check-square' : 'far fa-square'
  end
end
