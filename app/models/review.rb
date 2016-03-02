class Review < ActiveRecord::Base
  validates_presence_of :name
  belongs_to :game

  validates :rating, inclusion: { in: [1, 2, 3, 4, 5],
   message: "%{value} please rate 1, 2, 3, 4 or 5" }
end
