class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :establecer_idioma
  before_filter :instanciar_controlador_accion
  layout 'layout'

  def establecer_idioma
    I18n.locale = :es
  end

  def instanciar_controlador_accion
    @accion_actual = action_name
    @controlador_actual = controller_name
  end


end
