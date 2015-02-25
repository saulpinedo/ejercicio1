class CreatePais < ActiveRecord::Migration
  def change
    create_table :pais do |t|
      t.string :nombre
      t.text :descripcion

      t.timestamps null: false
    end
  end
end
