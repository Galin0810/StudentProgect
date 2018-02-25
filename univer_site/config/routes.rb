Rails.application.routes.draw do

  root 'main#index'

  scope ':locale', locale: /#{I18n.available_locales.join("|")}/ do
    root 'main#index'
  end

  root to: redirect("/#{I18n.default_locale}", status: 302), as: :redirected_root

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
end
