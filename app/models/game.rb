class Game < ActiveRecord::Base
  validates_presence_of :title
  has_many :reviews
end
