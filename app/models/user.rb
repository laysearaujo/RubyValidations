class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "Formato de email inválido" }
  validate :valid_cpf
  validates :phone, presence: true, format: { with: /\A\(?\d{2}\)?\s?\d{5}[-\s]?\d{4}\z/, message: "Formato de celular inválido (exemplo válido: (99) 12345-6789)" }

  private

  def valid_cpf
      return if cpf_valid?(cpf)
      errors.add(:cpf, "Formato de CPF inválido")
    end
  
    def cpf_valid?(cpf)
      # Remove qualquer caractere que não seja um dígito
      cleaned_cpf = cpf.gsub(/\D/, '')
      # Verifica se o CPF tem 11 dígitos numéricos
      return false unless cleaned_cpf.length == 11
      # Verifica se todos os dígitos são iguais (CPF inválido)
      return false if cleaned_cpf.chars.uniq.length == 1
  
      # Obtém os dígitos verificadores
      j = cleaned_cpf[9].to_i
      k = cleaned_cpf[10].to_i
  
      # Calcula o primeiro dígito verificador (j)
      sum_j = 0
      (0..8).each do |i|
        sum_j += cleaned_cpf[i].to_i * (10 - i)
      end
      remainder_j = sum_j % 11
      j_expected = remainder_j < 2 ? 0 : 11 - remainder_j
  
      # Calcula o segundo dígito verificador (k)
      sum_k = 0
      (0..9).each do |i|
        sum_k += cleaned_cpf[i].to_i * (11 - i)
      end
      remainder_k = sum_k % 11
      k_expected = remainder_k < 2 ? 0 : 11 - remainder_k
  
      # Verifica se os dígitos verificadores são iguais aos esperados
      j == j_expected && k == k_expected
    end

  end
