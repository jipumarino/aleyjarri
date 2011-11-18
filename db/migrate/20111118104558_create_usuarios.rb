class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :contrasena_hash
      t.string :contrasena_salt

      t.timestamps
    end
  end
end
