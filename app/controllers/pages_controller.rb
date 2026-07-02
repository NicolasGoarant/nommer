class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  TEASER_SLUGS = %w[
    fibromyalgie
    endometriose
    hashimoto
    apnees-sommeil
    ehlers-danlos
    tdah-adulte
  ].freeze

  def home
    by_slug = Pathology.published.where(slug: TEASER_SLUGS).index_by(&:slug)
    @teaser_pathologies = TEASER_SLUGS.map { |s| by_slug[s] }.compact
    @total_pathologies  = Pathology.published.count
  end

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

  def partenaires
  end
end
