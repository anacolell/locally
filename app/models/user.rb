class User < ApplicationRecord
  GENDER = %w[male female non-binary]
  PROFILE_TYPE = %w[individual couple family]
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :user_interests
  has_many :interests, through: :user_interests
  has_many :reviews
  has_many :bookmarks
  has_many :recommendations
  has_many :notifications
  has_many :messages
  has_many :conversations
  has_many :meetups_as_local, class_name: 'Meetup', foreign_key: 'local_id'
  has_many :meetups_as_tourist, class_name: 'Meetup', foreign_key: 'tourist_id'

  # validates :description, presence: true, length: { maximum: 500 }
  # validates :gender, presence: true, inclusion: { in: GENDER }
  # validates :location, presence: true
  # validates :birthdate, presence: true
  # validates :profile_type, presence: true, inclusion: { in: PROFILE_TYPE}
end
