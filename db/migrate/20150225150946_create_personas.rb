class CreatePersonas < ActiveRecord::Migration
  def change
    create_table :personas do |t|
      t.string :nombre
      t.integer :ci
      t.date :fecha_nac
      t.integer :pais_id

      t.timestamps null: false
    end
  end
end
