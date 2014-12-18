class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.text :description
      t.datetime :started_at
      t.datetime :ended_at

      t.timestamps
    end
  end
end
