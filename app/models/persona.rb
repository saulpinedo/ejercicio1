class Persona < ActiveRecord::Base
  has_one :pais

  validates :nombre, presence:true
  validates :nombre, length: {minimum:4}
  validates :nombre, format: {with: /\A[a-zA-Z ]+\Z/, message: 'Debe poseer solo letras'}

  validates :ci, presence:true
  validates :ci, length: {minimum: 7}
  validates :ci, format: {with: /[0-9 ]/, message: 'Debe poseer solo numero'}

end
