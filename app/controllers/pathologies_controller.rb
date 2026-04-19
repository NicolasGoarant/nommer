class PathologiesController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @pathologies    = Pathology.published.order(:category, :name)
    @by_category    = @pathologies.group_by(&:category)
  end

  def show
    @pathology = Pathology.published.find_by!(slug: params[:slug])
  end
end
