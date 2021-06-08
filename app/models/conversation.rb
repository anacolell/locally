class Conversation < ApplicationRecord
  # belongs_to :user
  has_many :messages

  belongs_to :tourist, class_name: "User"
  belongs_to :local, class_name: "User"
end
