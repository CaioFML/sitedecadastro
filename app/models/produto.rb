class Produto < ApplicationRecord

#Validar os campos de formulários
  belongs_to :departamento, optional: true

  validates :preco, :departamento, presence: true
  validates :nome, length: { minimum: 4}
end
