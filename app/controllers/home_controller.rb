class HomeController < ApplicationController
  def index
    @all_articles = Article.find_articles(current_user)
    @all_to_dos = current_user.user_to_dos
  end
end
