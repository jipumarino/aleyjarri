class InvitacionesController < ApplicationController
  def index
    if session[:usuario_id].blank?
      redirect_to login_url and return
    end
    @regalos = Regalo.all
  end
end
