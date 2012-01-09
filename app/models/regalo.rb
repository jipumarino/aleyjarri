class Regalo < ActiveRecord::Base
  belongs_to :reservado_por, :class_name => "Usuario"
  validates_uniqueness_of :reservado_por_id

  def reservado?
    not reservado_por_id.nil?
  end

end
