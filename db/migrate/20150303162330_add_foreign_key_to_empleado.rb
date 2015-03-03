class AddForeignKeyToEmpleado < ActiveRecord::Migration
  def change
    #add_foreign_key :pais, :empleado
    #add_reference :empleados, :pais, index: true
  end
end
