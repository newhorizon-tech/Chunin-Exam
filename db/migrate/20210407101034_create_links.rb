class CreateLinks < ActiveRecord::Migration[6.1]
  def change
    create_table :links, id: :uuid do |t|
      t.string :short_url
      t.string :full_url

      t.timestamps
    end
  end
end
