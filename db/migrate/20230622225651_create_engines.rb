class CreateEngines < ActiveRecord::Migration[7.0]
  def change
    create_table :engines do |t|
      t.string :code
      t.decimal :displacement
      t.integer :horsepower

      t.timestamps
    end
  end
end
