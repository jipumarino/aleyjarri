class SesionesController < ApplicationController
  def new
  end

  def create
    session[:usuario_id] = Usuario.autenticar(params[:nombre], params[:contrasena]).try(:id)
    redirect_to invitaciones_url
  end
end
