class PagesController < ApplicationController
  # Autorise l'accès à la page d'accueil sans authentification
  skip_before_action :authenticate_user!, only: :home

  def home
  end
end
