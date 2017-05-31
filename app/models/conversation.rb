class Conversation < ApplicationRecord
  belongs_to :sender, :foreign_key => :sender_id, class_name: "User"
  belongs_to :recipient, :foreign_key => :recipient_id, class_name: "User"

  has_many :messages, dependent: :destroy

  validates_uniqueness_of :sender, { scope: :recipient }

  scope :between, -> (sender, recipient) do
    where("(conversations.sender_id = ? AND conversations.recipient_id =?) OR (conversations.sender_id = ? AND conversations.recipient_id =?)", sender.id, recipient.id, recipient.id, sender.id)
  end
end

