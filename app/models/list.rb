# frozen_string_literal: true

class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks

  validates :name, presence: true, :name, uniqueness: true
  validates :list, presence: true, :list, uniqueness: true
end
