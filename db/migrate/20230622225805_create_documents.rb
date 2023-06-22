class CreateDocuments < ActiveRecord::Migration[7.0]
  def change
    create_table :documents do |t|
      t.references :car, null: false, foreign_key: true
      t.string :code

      t.timestamps
    end
  end
end
