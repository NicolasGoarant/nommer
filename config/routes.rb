Rails.application.routes.draw do
  root "pages#home"

  get "/a-propos",             to: "pages#about",                as: :about
  get "/contact",              to: "pages#contact",              as: :contact
  get "/mentions-legales",     to: "pages#mentions_legales",     as: :mentions_legales
  get "/conseil-scientifique", to: "pages#conseil_scientifique", as: :conseil_scientifique
  get "/securite-donnees",     to: "pages#securite_donnees",     as: :securite_donnees

  devise_for :users, controllers: {
    registrations: "users/registrations",
    sessions:      "users/sessions"
  }

  # Pathologies (publiques)
  resources :pathologies, only: [:index, :show], param: :slug

  # Questionnaire IA (public)
  resource :diagnostic, only: [:new, :create]

  # Journal (authentifié)
  resources :health_entries, path: "journal" do
    collection { get :index, as: "" }
  end
  get  "journal", to: "health_entries#index", as: :journal

  # Pistes
  resources :pistes, only: [:index, :update] do
    post :generate, on: :collection
  end

  # Synthèse
  resource :synthese, only: [:show]
end
