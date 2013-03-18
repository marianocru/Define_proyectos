class CreateProyectos < ActiveRecord::Migration
  def change
    create_table :proyectos do |t|
      t.string :titulo
      t.string :descripcion
      t.string :objetivo
      t.string :resultado
      t.string :estado
      t.timestamps
    end
  end
end
