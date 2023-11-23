class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :reservations, dependent: :destroy
  has_many :video_games, dependent: :destroy

  validates :user_name, :first_name, :last_name, :birthday, :email, :password, presence: true
  validates :user_name, :email, uniqueness: true

  PASSWORD_FORMAT = /\A
  (?=.{8,})          # Must contain 8 or more characters
  (?=.*\d)           # Must contain a digit
  (?=.*[a-z])        # Must contain a lower case character
  (?=.*[A-Z])        # Must contain an upper case character
  (?=.*[[:^alnum:]]) # Must contain a symbol
/x

  validates :password, format: { with: PASSWORD_FORMAT }

  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
