class CreateRegalos < ActiveRecord::Migration
  def change
    create_table :regalos do |t|
      t.string :detalle
      t.integer :cantidad
      t.integer :precio_pesos_chilenos
      t.string :categoria

      t.timestamps
    end
  end
end
