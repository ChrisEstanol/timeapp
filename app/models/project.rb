class Project < ActiveRecord::Base
  belongs_to :user
  has_many :activities

  validates :name, presence: true

  def total_time
    times = Project.joins(:activities).where("activities.project_id" => id).pluck(:started_at, :ended_at)
    if times.any?
      times.map! do |x|
        x[1] == nil ? 0 : x[1].to_time - x[0].to_time
      end
      p "#{times.inject(:+).round} seconds"
    end
  end
end
