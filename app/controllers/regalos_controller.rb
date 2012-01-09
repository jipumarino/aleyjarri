# Encoding: UTF-8
class RegalosController < ApplicationController
  def update
    Regalo.transaction do
      regalo = Regalo.find(params[:id])
      if regalo.reservado?
        render :text => 'Ése regalo ya fue reservado', :status => 403
      else
        regalo.reservado_por_id = session[:usuario_id]
        if regalo.save
          render :text => 'OK', :status => 200
        else
          render :text => 'Sólo puedes reservar un regalo', :status => 403
        end
      end
    end
  end
end
