# À ajouter dans config/routes.rb :
get "/a-propos",        to: "pages#about",           as: :about
get "/contact",         to: "pages#contact",          as: :contact
get "/mentions-legales", to: "pages#mentions_legales", as: :mentions_legales
