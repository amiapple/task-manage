class List < ApplicationRecord
  belongs_to :user
  has_many :cards, dependent: :destroy
  validates :title, length: { in: 1..250 }
end
