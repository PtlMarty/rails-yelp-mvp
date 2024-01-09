class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy  # if restaurant is deleted, all reviews are deleted
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: %w(chinese italian japanese french belgian) }

end
