class AgregarDatosReserva < ActiveRecord::Migration
  def up
    add_column :regalos, :reservado_por_id, :integer, :after => :precio_pesos_chilenos
    add_column :usuarios, :correo_electronico, :string, :after => :nombre
  end

  def down
    remove_column :usuarios, :correo_electronico
    remove_column :regalos, :reservado_por_id
  end
end
