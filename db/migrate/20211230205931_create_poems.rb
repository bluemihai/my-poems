class CreatePoems < ActiveRecord::Migration[7.0]
  def change
    create_table :poems do |t|
      t.string :title
      t.text :text
      t.date :date
      t.string :location
      t.string :meter
      t.integer :author_id

      t.timestamps
    end
  end
end
