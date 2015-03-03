class CreateCiudads < ActiveRecord::Migration
  def change
    create_table :ciudads do |t|
      t.string :nombre
      t.references :pai, index: true

      t.timestamps null: false
    end
    add_foreign_key :ciudads, :pais
  end
end
