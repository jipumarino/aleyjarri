class RegalosController < ApplicationController
  def update
    Regalo.transaction do
      regalo = Regalo.find(params[:id])
      if regalo.reservado?
        render :text => 'YA RESERVADO', :status => 403
      else
        regalo.update_attribute(:reservado_por_id, session[:usuario_id])
        render :text => 'OK', :status => 200
      end
    end
  end
end
