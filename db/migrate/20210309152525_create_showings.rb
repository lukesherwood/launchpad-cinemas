class CreateShowings < ActiveRecord::Migration[6.1]
  def change
    create_table :showings do |t|
      t.datetime :time
      t.references :auditorium, null: false, foreign_key: true

      t.timestamps
    end
  end
end
