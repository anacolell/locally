class User < ApplicationRecord
  GENDER = %w[Male Female Non-binary]
  PROFILE_TYPE = %w[Individual Couple Family]
  LANGUAGES = %w[Afrikaans Albanian Amharic Arabic Aragonese Armenian Azerbaijani Bashkir Basque Belarusian Bengali Bosnian Bulgarian Burmese Catalan Chamorro Chinese Croatian Czech Danish Dutch English Esperanto Estonian Faroese Fijian Finnish French Gaelic Galician Ganda Georgian German Greek Greenlandic Guarani Gujarati Haitian Hausa Hebrew Herero Hindi Hungarian Icelandic Indonesian Irish Italian Japanese Javanese Kannada Kanuri Kashmiri Kazakh Komi Kongo Korean Kurdish Lao Latin Latvian Luxembourgish Lithuanian Macedonian Malay Maltese Maori Marathi Marshallese Moldovan Mongolian Nauru Navajo Ndonga Nepali Norwegian Occitan Ojibwa Oriya Oromo Pali Panjabi Persian Polish Portuguese Quechua Romansh Rundi Russian Samoan Sango Sanskrit Sardinian Serbian Shona Sindhi Sinhala Slovak Slovenian Somali Spanish Sundanese Swahili Swati Swedish Tagalog Tahitian Tajik Tamil Tatar Telugu Thai Tibetan Tigrinya Tonga Tsonga Tswana Turkish Turkmen Twi Uighur Ukrainian Urdu Uzbek Venda Vietnamese Walloon Welsh Wolof Xhosa Yiddish Yoruba Zhuang Zulu]
  COUNTRIES = ["United States of America", "Afghanistan", "Albania", "Algeria", "Andorra", "Angola", "Antigua & Deps", "Argentina", "Armenia", "Australia", "Austria", "Azerbaijan", "Bahamas", "Bahrain", "Bangladesh", "Barbados", "Belarus", "Belgium", "Belize", "Benin", "Bhutan", "Bolivia", "Bosnia Herzegovina", "Botswana", "Brazil", "Brunei", "Bulgaria", "Burkina", "Burma", "Burundi", "Cambodia", "Cameroon", "Canada", "Cape Verde", "Central African Rep", "Chad", "Chile", "People's Republic of China", "Republic of China", "Colombia", "Comoros", "Democratic Republic of the Congo", "Republic of the Congo", "Costa Rica", "Croatia", "Cuba", "Cyprus", "Czech Republic", "Danzig", "Denmark", "Djibouti", "Dominica", "Dominican Republic", "East Timor", "Ecuador", "Egypt", "El Salvador", "Equatorial Guinea", "Eritrea", "Estonia", "Ethiopia", "Fiji", "Finland", "France", "Gabon", "Gaza Strip", "The Gambia", "Georgia", "Germany", "Ghana", "Greece", "Grenada", "Guatemala", "Guinea", "Guinea-Bissau", "Guyana", "Haiti", "Holy Roman Empire", "Honduras", "Hungary", "Iceland", "India", "Indonesia", "Iran", "Iraq", "Republic of Ireland", "Israel", "Italy", "Ivory Coast", "Jamaica", "Japan", "Jonathanland", "Jordan", "Kazakhstan", "Kenya", "Kiribati", "North Korea", "South Korea", "Kosovo", "Kuwait", "Kyrgyzstan", "Laos", "Latvia", "Lebanon", "Lesotho", "Liberia", "Libya", "Liechtenstein", "Lithuania", "Luxembourg", "Macedonia", "Madagascar", "Malawi", "Malaysia", "Maldives", "Mali", "Malta", "Marshall Islands", "Mauritania", "Mauritius", "Mexico", "Micronesia", "Moldova", "Monaco", "Mongolia", "Montenegro", "Morocco", "Mount Athos", "Mozambique", "Namibia", "Nauru", "Nepal", "Newfoundland", "Netherlands", "New Zealand", "Nicaragua", "Niger", "Nigeria", "Norway", "Oman", "Ottoman Empire", "Pakistan", "Palau", "Panama", "Papua New Guinea", "Paraguay", "Peru", "Philippines", "Poland", "Portugal", "Prussia", "Qatar", "Romania", "Rome", "Russian Federation", "Rwanda", "St Kitts & Nevis", "St Lucia", "Saint Vincent & the", "Grenadines", "Samoa", "San Marino", "Sao Tome & Principe", "Saudi Arabia", "Senegal", "Serbia", "Seychelles", "Sierra Leone", "Singapore", "Slovakia", "Slovenia", "Solomon Islands", "Somalia", "South Africa", "Spain", "Sri Lanka", "Sudan", "Suriname", "Swaziland", "Sweden", "Switzerland", "Syria", "Tajikistan", "Tanzania", "Thailand", "Togo", "Tonga", "Trinidad & Tobago", "Tunisia", "Turkey", "Turkmenistan", "Tuvalu", "Uganda", "Ukraine", "United Arab Emirates", "United Kingdom", "Uruguay", "Uzbekistan", "Vanuatu", "Vatican City", "Venezuela", "Vietnam", "Yemen", "Zambia", "Zimbabwe"]
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

  def age
    if birthdate
      (Time.now.to_s(:number).to_i - self.birthdate.to_time.to_s(:number).to_i) / 10e9.to_i
    end
  end
  # validates :description, presence: true, length: { maximum: 500 }
  # validates :gender, presence: true, inclusion: { in: GENDER }
  # validates :location, presence: true
  # validates :birthdate, presence: true
  # validates :profile_type, presence: true, inclusion: { in: PROFILE_TYPE}
end
