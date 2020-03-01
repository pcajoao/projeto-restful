class Answer < ApplicationRecord
  acts_as_paranoid
  belongs_to :formulary
  belongs_to :question
  belongs_to :visit
end
