Rails.application.routes.draw do

  get 'articles/index'

  get 'main/index'

  scope ':locale', locale: /#{I18n.available_locales.join("|")}/ do
    root 'main#index'
  end

  root to: redirect("/#{I18n.default_locale}", status: 302), as: :redirected_root
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
end
