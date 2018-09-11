class User < ApplicationRecord
  validates :zip_code, zipcode: { country_code: :us }
  validates :gender, presence: true
  validates :tobacco, presence: true
  validates :birthday, presence: true
  validates :fname, presence: true
  validates :lname, presence: true
  validates :phone, presence: true
  validates :email, presence: true

end
