class InvitacionesController < ApplicationController
  def index
    if session[:usuario_id].blank?
      redirect_to login_url
    end
  end
end
