class User < ApplicationRecord
  has_many :items, dependent: :destroy
  has_many :bookings
  has_many :reviews


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable
end
