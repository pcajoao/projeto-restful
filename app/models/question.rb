class Question < ApplicationRecord
  acts_as_paranoid
  belongs_to :formulary
  has_many :answer

  validates :formulary_id, presence: true, uniqueness: true
  validates :nome, presence: true, uniqueness: true
end
