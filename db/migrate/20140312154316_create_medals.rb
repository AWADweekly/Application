class CreateMedals < ActiveRecord::Migration
  def change
    create_table :medals do |t|
      t.string :code
      t.string :name
      t.integer :gold
      t.integer :silver
      t.integer :bronze

      t.timestamps
    end
  end
end
