# frozen_string_literal: true

class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks

  validates :name, presence: true
  validates :name, uniqueness: true
  # validates_length_of :comment, minimum: 5, allow_blank: true
end
