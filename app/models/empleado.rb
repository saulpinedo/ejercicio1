class Empleado < ActiveRecord::Base
  has_one :pai
end
