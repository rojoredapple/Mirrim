class User < ApplicationRecord
  has_many :moods, :traits, :journals
end
