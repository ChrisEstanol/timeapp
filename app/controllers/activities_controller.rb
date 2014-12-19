class ActivitiesController < ApplicationController


  def create
    @project =

    @activity = Activity.new(activity_params)
    @activity.save
  end

end
