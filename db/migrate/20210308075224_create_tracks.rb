class CreateTracks < ActiveRecord::Migration[6.1]
  def change
    create_table :tracks do |t|
      t.references :dsp, null: false, foreign_key: true
      t.string :route_code, unique: true
      t.string :service_type
      t.time :wave
      t.string :staging_location
      t.integer :wave_no
      t.string :driver
      t.integer :pad
      t.integer :cycle
      t.time :arrive_at_offsite

      t.timestamps
    end
  end
end
