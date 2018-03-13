RailsAdmin.config do |config|

  config.authenticate_with do
    warden.authenticate! scope: :user
  end

  config.authorize_with do |controller|
    unless current_user.try(:admin?)
      flash[:error] = "You are not an admin"
      redirect_to main_app.root_path
    end
  end

  config.current_user_method(&:current_user)

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
  config.model 'Article' do
    list do

    end
    edit do
      configure :date do
        strftime_format '%Y-%m-%d %H:%M'
      end
    end
  end

  
end
