class PagesController < ApplicationController
  before_action :set_tab
  before_action :authenticate_user!, except: :home

  def home
  end

  def dashboard
    @projects = Project.all
  end

  # Define an action that will set the active class in the navbar
  def set_tab
    @tab = :dashboard
  end

end
