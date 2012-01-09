class InvitacionesController < ApplicationController
  def index
    if session[:usuario_id].blank?
      redirect_to login_url and return
    end
    @usuario = Usuario.find session[:usuario_id]
    @regalos = Regalo.all
  end
end
