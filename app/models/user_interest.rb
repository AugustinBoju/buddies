class UserInterest < ApplicationRecord
  belongs_to :user
  belongs_to :interest

  validates :user, uniqueness: {scope: :interest}
  validates :user_id, presence: true
  validates :interest_id, presence: true
end
