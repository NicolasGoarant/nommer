class PistesController < ApplicationController
  def index
    @suggestions = current_user.pathology_suggestions.includes(:pathology).order(created_at: :desc)
  end

  def generate
    if current_user.health_entries.symptoms.count < 2
      redirect_to journal_path, alert: "Ajoutez au moins 2 symptômes pour analyser votre profil."
      return
    end
    MatchingService.new(current_user).run
    redirect_to pistes_path, notice: "Analyse mise à jour."
  end

  def update
    suggestion = current_user.pathology_suggestions.find(params[:id])
    suggestion.update(status: params[:status])
    redirect_to pistes_path
  end
end
