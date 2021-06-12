class Conversation < ApplicationRecord
  has_many :messages, dependent: :destroy
  has_many :notifications, dependent: :destroy
  belongs_to :tourist, class_name: "User"
  belongs_to :local, class_name: "User"
end
