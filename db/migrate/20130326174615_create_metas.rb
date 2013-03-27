class CreateMetas < ActiveRecord::Migration
  def change
    create_table :metas do |t|
      t.string :detalle
      t.string :estado
      t.integer :proyecto_id
      t.timestamps
    end
  end
end
