class CreateEmpleados < ActiveRecord::Migration
  def change
    create_table :empleados do |t|
      t.string :nombre
      t.string :nacionalidad

      t.timestamps null: false
    end
  end
end
