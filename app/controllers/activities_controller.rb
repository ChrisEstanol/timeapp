class ActivitiesController < ApplicationController

  def create
    @activity = Activity.new(activity_params)
    @activity.started_at = DateTime.now
    if @activity.save
      redirect_to dashboard_path
    else
      render "index"
    end
  end

  def edit
  end

  def update
    @activity = Activity.find(params[:id])
    @activity.update_attributes(set_params)
    @activity.ended_at = DateTime.now
    if @activity.save
      redirect_to dashboard_path
    else
      render "index"
    end
  end

  private

    def activity_params
      params.require(:activity).permit(:description)
    end

end



