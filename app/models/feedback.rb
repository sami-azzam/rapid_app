class Feedback < ApplicationRecord
  belongs_to :user

  validates :content, length: { minimum: 10 }
  validates :grade, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
  #validates :user_id, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: User.all.size }
end
