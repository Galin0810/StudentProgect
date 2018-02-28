Rails.application.routes.draw do

<<<<<<< HEAD
  root 'main#index'
=======
  get 'main/index'
>>>>>>> eaea661b17ef2fc0b5cdab86c3c7eff8687a37a2

  scope ':locale', locale: /#{I18n.available_locales.join("|")}/ do
    root 'main#index'
  end

  root to: redirect("/#{I18n.default_locale}", status: 302), as: :redirected_root
<<<<<<< HEAD

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
=======
>>>>>>> eaea661b17ef2fc0b5cdab86c3c7eff8687a37a2
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
end
