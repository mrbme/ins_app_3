class User < ApplicationRecord
  validates :zip_code, presence: true
  validates :gender, presence: true
  validates :age, presence: true
  validates :tobacco, presence: true
  validates :license, presence: true
  validates :gender, presence: true
  validates :height, presence: true
  validates :weight, presence: true
  validates :medical, presence: true
  validates :family_illness, presence: true
end
