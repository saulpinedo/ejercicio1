class Pai < ActiveRecord::Base
  belongs_to :persona
  belongs_to :empleados
  has_many :ciudads

  validates :nombre, presence: true
  validates :nombre, length:{minimum:3}
  validates :nombre, format: {with: /\A[a-zA-Z ]+\Z/, message: 'Debe poseer solo letras'}
  validates :descripcion, length:{maximum:140}

end
