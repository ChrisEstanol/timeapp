class ActivitiesController < ApplicationController


  def create
    @activity = Activity.new(activity_params)
    @activity.started_at = DateTime.now
    @activity.save

      render 'create'
  end

  def edit
  end

  def update
    @activity = Activity.find(params[:id])
    @activity.update_attributes(activity_params)
    @activity.ended_at = DateTime.now
    if @activity.save

      redirect_to pages_dashboard_path
      flash[:success] = 'New Activity created.'
    else
      redirect_to activities_path
    end
  end


  private

    def activity_params
      params.require(:activity).permit(:description, :project_id)
    end

end



