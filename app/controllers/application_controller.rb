class ApplicationController < ActionController::Base

  before_action :set_currency

  def set_currency
    if !session[:currency]
      session[:currency] = 'eur'
    end
  end

end
