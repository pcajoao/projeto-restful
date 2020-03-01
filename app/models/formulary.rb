class Formulary < ApplicationRecord
    acts_as_paranoid
    has_many :answer
    validates :nome, presence: true, uniqueness: true
end
