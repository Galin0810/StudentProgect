class MainController < ApplicationController
  def index
    @articles = Article.limit(4)

    
  end

  def show
    
  end
end
