class CreateCarsEnginesJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :cars, :engines do |t|
      t.index [:car_id, :engine_id]
      t.index [:engine_id, :car_id]
    end
  end
end
