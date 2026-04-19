class DiagnosticsController < ApplicationController
  skip_before_action :authenticate_user!

  def new
  end

  def create
    description = params[:description]

    if description.blank?
      flash.now[:alert] = "Décrivez vos symptômes pour continuer."
      render :new and return
    end

    @result = DiagnosticService.new(description).run
    render :result
  end
end
