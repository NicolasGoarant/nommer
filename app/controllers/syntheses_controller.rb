class SynthesesController < ApplicationController
  def show
    @entries     = current_user.health_entries.chronological
    @suggestions = current_user.pathology_suggestions.includes(:pathology)
  end
end
