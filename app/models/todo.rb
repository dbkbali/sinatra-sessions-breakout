class Todo < ActiveRecord::Base

  validates :task, presence: true
  validates :due_date, presence: true

end