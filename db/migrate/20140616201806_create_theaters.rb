class CreateTheaters < ActiveRecord::Migration
  def change
    create_table :theaters do |t|
      t.string :name
      t.string :url
      t.string :telephone_number
      t.string :location
      t.string :business_hour

      t.timestamps
    end

    create_table :plays_theaters, id: false do |t|
      t.references :theater, :play
    end

    add_index :plays_theaters, [:theater_id, :play_id]
  end
end
