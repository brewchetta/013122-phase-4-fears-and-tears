class Person < ApplicationRecord
  has_many :fears, dependent: :destroy

  validates :age, numericality: { greater_than: 0, less_than: 130 }

  scope :young, -> { where("age < 25") }
  scope :is_miguel, -> { where("name = Miguel") }
end
