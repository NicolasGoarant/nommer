class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def about
  end

  def contact
  end

  def mentions_legales
  end

  def conseil_scientifique
  end

  def securite_donnees
  end
end
