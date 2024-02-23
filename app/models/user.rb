class User < ApplicationRecord
  has_many :reservations, dependent: :destroy
  has_many :doctors, through: :reservations

  validates :name, presence: true, uniqueness: true

  def generate_jwt
    JWT.encode({ id:, exp: 365.day.from_now.to_i }, Rails.application.secret_key_base)
  end

  def self.from_jwt(token)
    decoded = JWT.decode(token, Rails.application.secret_key_base)[0]
    find(decoded['id'])
  end
end
