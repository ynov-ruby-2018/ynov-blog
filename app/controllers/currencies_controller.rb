class CurrenciesController < ApplicationController

  def show
    session[:currency] = params[:id]

    redirect_to request.referer
  end

end
