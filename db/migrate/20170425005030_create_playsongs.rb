class CreatePlaysongs < ActiveRecord::Migration[5.0]
  def change
    create_table :playsongs do |t|
      t.references :playlist, foreign_key: true
      t.references :song, foreign_key: true

      t.timestamps
    end
  end
end
