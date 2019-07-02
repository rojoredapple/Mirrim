class User < ApplicationRecord
  has_many :moods
  has_many :traits
  has_many :journals
end
