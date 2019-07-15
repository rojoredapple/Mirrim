class Journal < ApplicationRecord
  belongs_to :user
<<<<<<< HEAD
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates :content, presence: true
=======
  validates :text, presence: true
>>>>>>> 0a431bd53f9c5e6a68f864c0320e322d398e1cd1
end
