class AddPais < ActiveRecord::Migration
  def change
    add_foreign_key :empleados, :pais
  end
end
