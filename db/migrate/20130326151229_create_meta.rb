class CreateMeta < ActiveRecord::Migration
  def change
    create_table :meta do |t|
      t.string :detalle
      t.string :estado

      t.timestamps
    end
  end
end
