class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :user_interests
  has_many :interests, through: :user_interests
  has_many :sent_requests, foreign_key: "sender_id", class_name: "Request"
  has_many :received_requests, foreign_key: "receiver_id", class_name: "Request"

  validates :first_name, :last_name, :email, presence: true


  def requests
    sent_requests + received_requests
  end

  def to_s
    "#{first_name} #{last_name[0]}."
  end

  def self.filter(current_user, selected_interest_ids)
    if selected_interest_ids.empty?
      self.where
          .not(id: current_user)
          .uniq
    else
      self.where
          .not(id: current_user)
          .joins(:interests)
          .where('interests.id IN (?)', selected_interest_ids)
          .uniq
    end
  end
end
