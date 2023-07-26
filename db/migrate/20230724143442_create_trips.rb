class CreateTrips < ActiveRecord::Migration[6.1]
  def change
    create_table :trips do |t|
      t.string :destination
      t.string :travel_mode
      t.float :budget
      t.references :user, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.text :notes
      t.string :image_url
      t.string :trip_status

      t.timestamps
    end
  end
end