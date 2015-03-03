class AddPaisToEmpleados < ActiveRecord::Migration
  def change
    add_column :empleados, :pai_id, :integer
    add_index :empleados, :pai_id

  end
end
