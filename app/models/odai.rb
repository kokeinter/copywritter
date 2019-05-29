class Odai < ApplicationRecord
  has_many :copys, dependent: :destroy
  belongs_to :user
end
