require 'digest/sha1'

class Usuario < ActiveRecord::Base
  has_one :regalo_reservado, :class_name => 'Regalo', :foreign_key => 'reservado_por_id'

  def self.autenticar nombre, contrasena
    u = Usuario.find_by_nombre nombre
    return nil if u.nil?
    return u if Usuario.hash(contrasena, u.contrasena_salt) == u.contrasena_hash
    return nil
  end

  def contrasena= contrasena_str
    self.contrasena_salt = Usuario.salt
    self.contrasena_hash = Usuario.hash contrasena_str, contrasena_salt
  end

  def self.salt
    (rand*1000000000).to_s.delete '.'
  end

  def self.hash str, salt
    Digest::SHA1.hexdigest(str+salt)
  end
end
