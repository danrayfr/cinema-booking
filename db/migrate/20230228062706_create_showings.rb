class CreateShowings < ActiveRecord::Migration[7.0]
  def change
    create_table :showings do |t|
      t.date :date
      t.time :time
      t.references :movie, null: false, foreign_key: true
      t.references :cinema, null: false, foreign_key: true

      t.timestamps
    end
  end
end
