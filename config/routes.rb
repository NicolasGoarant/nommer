Rails.application.routes.draw do
  get "/a-propos", to: "pages#about", as: :about
  root "pathologies#index"

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
