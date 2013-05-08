class CreateHistorias < ActiveRecord::Migration
  def change
    create_table :historias do |t|
      t.string :detalle
      t.string :estado
      t.string :duracion
      t.integer :meta_id
      t.timestamps
    end
  end

end
