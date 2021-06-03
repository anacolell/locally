class User < ApplicationRecord
  GENDER = %w[Male Female Non-binary]
  PROFILE_TYPE = %w[Individual Couple Family]
  LANGUAGES = %w[Afrikaans Albanian Amharic Arabic Aragonese Armenian Azerbaijani Bashkir Basque Belarusian Bengali Bosnian Bulgarian Burmese Catalan Chamorro Chinese Croatian Czech Danish Dutch English Esperanto Estonian Faroese Fijian Finnish French Gaelic Galician Ganda Georgian German Greek Greenlandic Guarani Gujarati Haitian Hausa Hebrew Herero Hindi Hungarian Icelandic Indonesian Irish Italian Japanese Javanese Kannada Kanuri Kashmiri Kazakh Komi Kongo Korean Kurdish Lao Latin Latvian Luxembourgish Lithuanian Macedonian Malay Maltese Maori Marathi Marshallese Moldovan Mongolian Nauru Navajo Ndonga Nepali Norwegian Occitan Ojibwa Oriya Oromo Pali Panjabi Persian Polish Portuguese Quechua Romansh Rundi Russian Samoan Sango Sanskrit Sardinian Serbian Shona Sindhi Sinhala Slovak Slovenian Somali Spanish Sundanese Swahili Swati Swedish Tagalog Tahitian Tajik Tamil Tatar Telugu Thai Tibetan Tigrinya Tonga Tsonga Tswana Turkish Turkmen Twi Uighur Ukrainian Urdu Uzbek Venda Vietnamese Walloon Welsh Wolof Xhosa Yiddish Yoruba Zhuang Zulu]
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
  has_one_attached :photo

  # validates :description, presence: true, length: { maximum: 500 }
  # validates :gender, presence: true, inclusion: { in: GENDER }
  # validates :location, presence: true
  # validates :birthdate, presence: true
  # validates :profile_type, presence: true, inclusion: { in: PROFILE_TYPE}
end
