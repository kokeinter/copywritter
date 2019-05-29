class Like < ApplicationRecord
  belongs_to :user
  belongs_to :copy
  validates :user_id, presence: true
  validates :copy_id, presence: true
end
