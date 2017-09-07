class AddDurationToSteps < ActiveRecord::Migration[5.0]
  def change
    add_column :steps, :duration, :integer, default: 0
  end
end
