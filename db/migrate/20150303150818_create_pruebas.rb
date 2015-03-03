class CreatePruebas < ActiveRecord::Migration
  def change
    create_table :pruebas do |t|
      t.references :persona, index: true

      t.timestamps null: false
    end
    add_foreign_key :pruebas, :personas
  end
end
