class Copy < ApplicationRecord
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy
  belongs_to :user
  belongs_to :odai
end
