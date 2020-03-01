class User < ApplicationRecord
    acts_as_paranoid
    has_many :visit
    validates :senha, length: { minimum: 6 }
    validates :cpf, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
    validates :cpf, length: { minimum: 11, maximum: 11}
    validates :cpf, format: { with: /\A[+-]?\d+\z/, message: "Use apenas números no CPF." }
end