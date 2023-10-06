class User < ApplicationRecord
    validates :name, presence: true
    validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "Formato de email inválido" }
    validates :cpf, presence: true, format: { with: /\A\d{11}\z/, message: "Formato de CPF inválido (deve ter 11 dígitos numéricos)" }
    validates :phone, format: { with: /\A\d{11}\z/, message: "Formato de telefone inválido (deve ter DDD + 9 dígitos numéricos)" }, allow_blank: true
  end
  