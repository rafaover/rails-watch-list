class Movie < ApplicationRecord
  has_many :bookmarks, before_remove: :check_for_bookmark

  validates :title, :overview, presence: true, uniqueness: true

  def check_for_bookmark
    throw :abort if bookmarks.count.positive?
  end
end
