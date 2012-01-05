class Regalo < ActiveRecord::Base
  belongs_to :reservado_por, :class_name => "Usuario"

  def reservado?
    not reservado_por.nil?
  end

end
