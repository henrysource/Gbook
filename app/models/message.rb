class Message < ActiveRecord::Base
  has_many :responds, class_name: "Message",foreign_key: "message_id", dependent: :destroy 

  belongs_to :topic ,class_name: "Message"

  scope :latest_messages , -> {where(message_id: nil)}
end
