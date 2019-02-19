class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  has_many :bookings, dependent: :destroy
  has_many :yachts, dependent: :destroy
  validates :first_name, presence: true, uniqueness: { scope: :last_name }
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: /\A.*@.*\.com\z/ }
  validates :encrypted_password, presence: true
  mount_uploader :photo, PhotoUploader
end
