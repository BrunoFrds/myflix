class ApplicationController < ActionController::Base
  # Exige que l'utilisateur soit connecté pour toutes les actions
  before_action :authenticate_user!
  # Autorise des paramètres personnalisés pour Devise
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  # Autorise les champs supplémentaires pour l'inscription et la mise à jour du compte utilisateur
  def configure_permitted_parameters
    # Permet d'ajouter les champs first_name et last_name lors de l'inscription
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[first_name last_name])

    ## Permet d'ajouter les champs first_name et last_name lors de la mise à jour du compte
    devise_parameter_sanitizer.permit(:account_update, keys: %i[first_name last_name])
  end
end
