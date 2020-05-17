class Memo < ApplicationRecord
  belongs_to :user
  validates :food, :limit_date, presence: true
end
