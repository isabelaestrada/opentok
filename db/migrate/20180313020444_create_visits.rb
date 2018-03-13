class CreateVisits < ActiveRecord::Migration[5.1]
  def change
    create_table :visits do |t|
      t.text :location
      t.text :geocoder
      t.text :device
      t.text :backtrace

      t.timestamps
    end
  end
end
