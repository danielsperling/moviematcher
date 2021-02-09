class Favorite < ApplicationRecord
  has_many :movies, :users
end
