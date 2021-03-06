class CreatePlays < ActiveRecord::Migration
  def change
    create_table :plays do |t|
      t.string :title
      t.text :description
      t.string :theater
      t.string :company_name
      t.integer :rate
      t.string :url
      t.datetime :start_date
      t.datetime :end_date
      t.datetime :time
      t.integer :price
      t.boolean :on_theater
      t.timestamps
    end
  end
end
