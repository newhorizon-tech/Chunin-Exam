class CreateLinks < ActiveRecord::Migration[6.1]
  def change
    create_table :links do |t|
      t.string :short_url
      t.string :full_url
      t.integer :visits_count

      t.timestamps
    end
  end
end
