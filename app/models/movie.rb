class Movie < ApplicationRecord
  has_many :bookmark

  validates :title, presence: true, :title, uniqueness: true
end
