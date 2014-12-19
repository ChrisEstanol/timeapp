class PagesController < ApplicationController
  before_action :set_tab
  before_action :authenticate_user!, except: :home

  def home
  end

  def dashboard
    @projects = Project.all
    @activities = Activity.all
  end

  # Define an action that will set the active class in the navbar
  def set_tab
    @tab = :dashboard
  end

end




  # def create
  #   @article = current_user.articles.build(article_params)
  #   @article.user_id = current_user.id

  #   @article.save
  #   render 'create'

  # end
