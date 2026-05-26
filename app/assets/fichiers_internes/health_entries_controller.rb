class HealthEntriesController < ApplicationController
  before_action :set_entry, only: [:edit, :update, :destroy]

  def index
    @entries = current_user.health_entries.recent
    # Groupement par mois avec libellé français ("Mai 2026" au lieu de "May 2026")
    @entries_by_month = @entries.group_by do |e|
      I18n.l(e.occurred_on, format: "%B %Y").capitalize
    end
  end

  def new
    @entry = HealthEntry.new(entry_type: params[:type] || "symptom",
                             occurred_on: Date.today)
  end

  def create
    @entry = current_user.health_entries.build(entry_params)
    if @entry.save
      redirect_to journal_path, notice: "Entrée ajoutée."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    if @entry.update(entry_params)
      redirect_to journal_path, notice: "Entrée modifiée."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @entry.destroy
    redirect_to journal_path, notice: "Entrée supprimée."
  end

  private

  def set_entry
    @entry = current_user.health_entries.find(params[:id])
  end

  def entry_params
    params.require(:health_entry).permit(
      :entry_type, :occurred_on, :title, :description,
      :body_zone, :intensity, :doctor_specialty,
      :exam_name, :exam_result_available, :exam_result_notes
    )
  end
end
