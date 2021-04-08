class CreateVisits < ActiveRecord::Migration[6.1]
  def change
    create_table :visits do |t|
      t.references :link
      t.string :browser
      t.string :os

      t.timestamps
    end
  end
end
